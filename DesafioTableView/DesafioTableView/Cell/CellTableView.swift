//
//  CellTableView.swift
//  DesafioTableView
//
//  Created by Lorena on 25/10/22.
//

import UIKit

class CellTableView: UITableViewCell {
    
    
    @IBOutlet weak var imageCar: UIImageView!
    
    @IBOutlet weak var nameCar: UILabel!
    
    
    static let identifier: String = "CellTableView"

    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
       
    }

    func setupCell(model: Cars) {
        nameCar.text = model.name
        imageCar.image = model.image
    }
    
}
