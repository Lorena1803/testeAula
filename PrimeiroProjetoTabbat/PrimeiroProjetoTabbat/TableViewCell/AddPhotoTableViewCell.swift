//
//  AddPhotoTableViewCell.swift
//  PrimeiroProjetoTabbat
//
//  Created by Lorena on 10/11/22.
//

import UIKit

class AddPhotoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "AddPhotoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoImageView.tintColor = .black

    }
    
    func setupCell(person: Person){
        photoImageView.image = person.photo
        nameLabel.text = person.name
        
    }

    
}
