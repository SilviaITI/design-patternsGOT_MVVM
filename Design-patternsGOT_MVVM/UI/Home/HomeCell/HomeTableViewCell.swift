//
//  HomeTableViewCell.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: OUTLETS
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    // MARK: LYFECYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    // function to prepare cell data
    override func prepareForReuse() {
        characterName.text = nil
        characterImage.image = nil
    }
    
    // uptdating of the view with character data
    func updateViews(data: Character) {
        update(fullName: data.fullName)
        update(imageUrl: data.imageUrl)
    }
    
    private func update(fullName: String) {
        characterName.text = fullName
    }
    
    private func update(imageUrl: URL) {
        characterImage.setImage(for: imageUrl)
        
        
    }
}

    
    

