//
//  HomeViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import Foundation
// MARK: - PROTOCOL
protocol HomeViewModelProtocol {
    
}
// MARK: - CLASS

final class HomeViewModel {
    private weak var viewDelegate: HomeViewProtocol?
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
}
// MARK: - DELEGATE
extension HomeViewModel: HomeViewModelProtocol {
    
}
