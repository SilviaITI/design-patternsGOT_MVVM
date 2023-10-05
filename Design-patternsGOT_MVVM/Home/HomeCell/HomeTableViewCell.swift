//
//  HomeTableViewCell.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    


override func prepareForReuse() {
    characterName.text = nil
    characterImage.image = nil
}


func updateViews(data: Character?) {
    update(fullName: data?.fullName)
    update(image: data?.image)
}

private func update(fullName: String?) {
    characterName.text = fullName ?? ""
}

private func update(image: String?) {
    characterImage.image = UIImage(named: image ?? "")
}
    
}
