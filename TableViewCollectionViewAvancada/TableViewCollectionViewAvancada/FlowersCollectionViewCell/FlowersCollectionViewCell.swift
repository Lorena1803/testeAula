//
//  FlowersCollectionViewCell.swift
//  TableViewCollectionViewAvancada
//
//  Created by Lorena on 09/11/22.
//

import UIKit

class FlowersCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var flowerImageView: UIImageView!
    
    static let identifier: String = "FlowersCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        flowerImageView.contentMode = .scaleAspectFill

    }
    
    func setupCell(nameImage: String){
        flowerImageView.image = UIImage(named: nameImage)
    }

}
