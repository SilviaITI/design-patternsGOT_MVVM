//
//  DetailViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 6/10/23.
//

import Foundation
// MARK: - PROTOCOL
protocol DetailViewModelProtocol {
    func onViewsLoaded()
    
          
}
// MARK: - CLASS
final class DetailViewModel {
    var viewData:Character?
    // viewDelegate
    private weak var viewDelegate: DetailViewProtocol?
    init(viewData: Character? = nil, viewDelegate: DetailViewProtocol? = nil) {
        self.viewData = viewData
        self.viewDelegate = viewDelegate
    }
}
  
// MARK: - EXTENSION
extension DetailViewModel: DetailViewModelProtocol {
    // send data to view for each character
    func onViewsLoaded() {
        guard let viewData else { return }
        viewDelegate?.setView(viewData: viewData)
    }
    
}
