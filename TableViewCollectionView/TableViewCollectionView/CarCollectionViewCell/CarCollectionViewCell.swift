//
//  CarCollectionViewCell.swift
//  TableViewCollectionView
//
//  Created by Lorena on 08/11/22.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var carImageView: UIImageView!
    
    
    static let identifier: String = "CarCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    func setupCell(carImage: String){
        carImageView.image = UIImage(named: carImage)
    }
}
