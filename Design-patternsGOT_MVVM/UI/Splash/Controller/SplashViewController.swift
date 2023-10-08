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
    func navigateToContinent()
  
}

// MARK: - CLASS
class SplashViewController: UIViewController {
   
    // MARK: OUTLETS
    @IBOutlet weak var charactersButton: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var continentsButton: UIButton!
    var viewModel: SplashViewModelProtocol?
    // MARK: LYFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewModel?.onViewLoaded()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    @IBAction func tapCharacterbUTTON(_ sender: UIButton)  {
        viewModel?.checkSelectedButton(sender.tag)
    }
    @IBAction func tapContinenButtom(_ sender: UIButton) {
        viewModel?.checkSelectedButton(sender.tag)
    
    }
    
}

    // MARK: -EXTENSION
extension SplashViewController: SplashViewProtocol {
 
    
    // MARK: NAVIGATION
    func navigateToContinent() {
        let continentTableViewController = ContinentTableViewController()
        continentTableViewController.viewModel = ContinentViewModel(viewDelegate: continentTableViewController )
        navigationController?.pushViewController(continentTableViewController, animated: true)
    }
    
  
    func navigateToHome() {
        let homeTableViewController = HomeTableViewController()
        homeTableViewController.viewModel = HomeViewModel(viewDelegate: homeTableViewController)
        navigationController?.pushViewController(homeTableViewController, animated: true)
        
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

