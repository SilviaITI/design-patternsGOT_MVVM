//
//  SplashViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 5/10/23.
//

import Foundation
// MARK: - PROTOCOL
protocol SplashViewModelProtocol {
   func onViewLoaded()
   
}

// MARK: - CLASS
final class SplashViewModel {
    
    // MARK: PROPERTIES
    private weak var viewDelegate: SplashViewProtocol?
    init(viewDelegate: SplashViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    // MARK: LIFECYCLE
    private func loadData() {
        viewDelegate?.showLoader(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            self?.viewDelegate?.showLoader(false)
            self?.viewDelegate?.navigateToHome()
            
        }
    }
}
                                      
                                      
// MARK: -EXTENSION
extension SplashViewModel: SplashViewModelProtocol {
    func onViewLoaded() {
        loadData()
    }
    
    
}
