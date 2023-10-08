//
//  ContinentViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 8/10/23.
//

import Foundation

// MARK: - PROTOCOL
protocol ContinentViewModelProtocol {
    
}
// MARK: - CLASS
final class ContinentViewModel {
    
    private weak var viewDelegate: ContinentsViewProtocol?
    private var viewData:[Continent] = []
    init(viewDelegate: ContinentsViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
}
// MARK: - EXTENSION
extension ContinentViewModel: ContinentViewModelProtocol {
    
}
