//
//  DetailViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 6/10/23.
//

import UIKit
// MARK: - PROTOCOL
protocol DetailViewProtocol: AnyObject {
    func setView(viewData: Character)
}
// MARK: - CLASS
class DetailViewController: UIViewController {
    
    // MARK: OUTLETS
    @IBOutlet weak var gotLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var familyLabel: UILabel!
    
    // viewModel
    var viewModel: DetailViewModel?
    
    // MARK: LYFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
  
}
// MARK: - EXTENSION
    extension DetailViewController: DetailViewProtocol {
        
        // updating of the character properties
        func setView(viewData: Character){
            characterImage.setImage(for: viewData.imageUrl)
            firstNameLabel.text = viewData.firstName
            lastNameLabel.text = viewData.lastName
            titleLabel.text = viewData.title
            familyLabel.text = viewData.family
            title = viewData.fullName
            gotLabel.text = "GOT"
        }
    }


