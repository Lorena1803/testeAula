//
//  NameTableViewCell.swift
//  tableView
//
//  Created by Lorena on 20/10/22.
//

import UIKit

//criar a celula
//criar a identifier
//add identifier na xib
//criar metodo Nib
//criar os elementos e fazer suas ligações
//configurar elementos
//criar metodo de Setup!!!!!!!!!

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
   
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

//    ciclo de vida da celula -> como se fosse um viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    func setupCell(name: String) {
        nameLabel.text = name
    }
    
}
