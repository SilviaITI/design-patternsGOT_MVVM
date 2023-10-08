//
//  ContinentViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 8/10/23.
//

import Foundation

// MARK: - PROTOCOL
protocol ContinentViewModelProtocol {
    func data(at index:Int) -> Continent?
    func onViewsLoaded()
    var dataCount: Int { get }
}
// MARK: - CLASS
final class ContinentViewModel {
    // MARK: - PROPERTIES
    private weak var viewDelegate: ContinentsViewProtocol?
    private var viewData:[Continent] = []
    init(viewDelegate: ContinentsViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    // MARK: - PRIVATE FUNCTIONS
    private func loadData() {
        viewDelegate?.showLoading()
        NetworkModel.shared.getContinents { result in
            switch result {
            case let .success(continents):
                self.viewData = continents
            case let .failure(error):
                print("Error: \(error)")
            }
            DispatchQueue.main.async { self.viewDelegate?.updateViews()
            }
        }
        viewDelegate?.hideLoading()
    }
}
// MARK: - EXTENSION
extension ContinentViewModel: ContinentViewModelProtocol {
    // data of character
    func data(at index: Int) -> Continent? {
        guard  index < dataCount else { return nil}
        return viewData[index]
    }
    // count items of array
    var dataCount: Int {
        viewData.count
    }
    // the view is loaded
    func onViewsLoaded() {
        loadData()
        
        
    }
    
}
