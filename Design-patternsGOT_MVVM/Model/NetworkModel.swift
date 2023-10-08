//
//  NetworkModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 8/10/23.
//

import Foundation

final class NetworkModel {
    enum NetworkError: Error {
        case unknown
        case malformedUrl
        case decodingFailed
        case encodingFailed
        case noData
        case statusCode(code: Int?)
        case noToken
    }
    
    // MARK: - Properties
    static let shared = NetworkModel()
    private var baseComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "thronesapi.com"
        return components
    }
    
    private let session: URLSession
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    // https://thronesapi.com
    // MARK: - Public Methods
   
    func getCharacters(
        completion: @escaping (Result<[Character], NetworkError>) -> Void
    ) {
        var components = baseComponents
        components.path = "/api/v2/Characters"
        
        guard let url = components.url else {
            completion(.failure(.malformedUrl))
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        createTask(
            for: request,
            using: [Character].self,
            completion: completion
        )
    }

   
    func createTask<T: Decodable>(
        for request: URLRequest,
        using type: T.Type,
        completion: @escaping (Result<T, NetworkError>) -> Void
    ) {
        let task = session.dataTask(with: request) { data, response, error in
            let result: Result<T, NetworkError>
            
            defer {
                completion(result)
            }

            guard error == nil else {
                result = .failure(.unknown)
                return
            }
            
            guard let data else {
                result = .failure(.noData)
                return
            }
            
            guard let resource = try? JSONDecoder().decode(type, from: data) else {
                result = .failure(.decodingFailed)
                return
            }
            
            result = .success(resource)
        }
        
        task.resume()
    }
}
