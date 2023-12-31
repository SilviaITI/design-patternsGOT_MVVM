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
    func checkSelectedButton(_ sender: Int)
    
}

// MARK: - CLASS
final class SplashViewModel {
    
    // MARK: PROPERTIES
    private weak var viewDelegate: SplashViewProtocol?
    init(viewDelegate: SplashViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    // MARK: LIFECYCLE
    
    private func loadDataCharacters() {
        
        self.viewDelegate?.navigateToHome()
        
    }
    
    private func loadContinents(){
        
        self.viewDelegate?.navigateToContinent()
        
    }
    
}

// MARK: -EXTENSION
extension SplashViewModel: SplashViewModelProtocol {
    func checkSelectedButton(_ sender: Int) {
        switch sender {
        case 1:
            self.loadDataCharacters()
        case 2:
            self.loadContinents()
        default: ()
        }
    }
    
    func onViewLoaded() {
        loadDataCharacters()
        loadContinents()
    }
    
    
}
