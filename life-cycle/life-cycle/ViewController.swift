//
//  ViewController.swift
//  life-cycle
//
//  Created by Lorena on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var tappedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    @IBAction func TappedButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        vc?.firstName = " \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") "
                navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
    }
    
    
    
    
    
    
    
    
}

