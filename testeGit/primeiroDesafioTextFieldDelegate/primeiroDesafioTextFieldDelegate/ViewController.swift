//
//  ViewController.swift
//  primeiroDesafioTextFieldDelegate
//
//  Created by Lorena on 27/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
   
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configFontEndColour()
        
    }

    func configFontEndColour() {
        view.backgroundColor = .orange
        
        nameTextfield.placeholder = "Digite seu nome"
        addressTextField.placeholder = "Digite seu endereço"
        PasswordTextField.placeholder = "Digite sua senha"
        
        nameTextfield.delegate = self
        addressTextField.delegate = self
        PasswordTextField.delegate = self
       
        nameTextfield.layer.borderWidth = 2
        nameTextfield.layer.borderColor = UIColor.lightGray.cgColor
        
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        PasswordTextField.layer.borderWidth = 2
        PasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.backgroundColor = .blue
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 20
    }

    @IBOutlet var tappedRegisterButton: UIView!
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        teclado sobe
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
//        teclado desce
        if textField.text == "" {
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        quando clica no retorn
        textField.resignFirstResponder()
        
        return true
    }
    
    
}
