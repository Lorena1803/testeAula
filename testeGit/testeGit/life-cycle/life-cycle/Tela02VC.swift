//
//  Tela02VC.swift
//  life-cycle
//
//  Created by Lorena on 11/10/22.
//

import UIKit

class Tela02VC: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    
    var firstName: String = ""
    var lastName: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = firstName
        
    }
    

}
