//
//  SplashViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit
// MARK: - PROTOCOL
protocol SplashViewProtocol: AnyObject {
    func showLoader(_ show:Bool)
    func navigateToHome()
}

// MARK: - CLASS
class SplashViewController: UIViewController {
    
    // MARK: OUTLETS
    @IBOutlet weak var loader: UIActivityIndicatorView!
    var viewModel: SplashViewModelProtocol?
    // MARK: LYFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewLoaded()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
}

    // MARK: -EXTENSION
extension SplashViewController: SplashViewProtocol {
    // MARK: NAVIGATION
    func navigateToHome() {
        let homeTableViewController = HomeTableViewController()
        homeTableViewController.viewModel = HomeViewModel(viewDelegate: homeTableViewController)
        navigationController?.setViewControllers([homeTableViewController], animated: true)
        
    }
    // activity indicator function
    func showLoader(_ show:Bool) {
        switch show {
        case true where !loader.isAnimating:
            loader.startAnimating()
        case false where loader.isAnimating:
            loader.stopAnimating()
        default: break
        }
    }
    
    
}

