//
//  HomeViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import Foundation

// MARK: - PROTOCOL
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
  func onViewsLoaded()
    func data(at index:Int) -> Character?
    func onItemSelected(at index: Int)
  
}
// MARK: - CLASS

final class HomeViewModel {
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData:[Character] = []
    
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    private func loadData(){
        viewData = characters
        viewDelegate?.updateViews()
        
        
        // notificar a la vista que se han cargado los datos
    }
    //    private func decodeData() {
    //        if let characterData = charactersJSON.data(using: .utf8) {
    //             do {
    //                 let characters = try JSONDecoder().decode([Character].self, from: characterData)
    //                 print(characters)
    //             } catch {
    //                 print("Error al decodificar el JSON: \(error)")
    //             }
    //         } else {
    //             print("Error al convertir la cadena JSON a datos.")
    //         }
    //    }
    //}}
}
// MARK: - DELEGATE
extension HomeViewModel: HomeViewModelProtocol {
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else {return}
        viewDelegate?.navigateToDetail(with: data)
    }
    
    func data(at index: Int) -> Character? {
        guard  index < dataCount else { return nil}
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
 
    
    
    
}
