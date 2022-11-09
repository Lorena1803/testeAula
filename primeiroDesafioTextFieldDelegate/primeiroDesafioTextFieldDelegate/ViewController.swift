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
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configFontEndColour()
        
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        
    }
    
    func configFontEndColour() {
        registerButton.isEnabled = false
        
        view.backgroundColor = .orange
        
        nameTextfield.placeholder = "Digite seu nome"
        addressTextField.placeholder = "Digite seu endereço"
        PasswordTextField.placeholder = "Digite sua senha"
        confirmPasswordTextField.placeholder = "Confirme sua senha"
        
        nameTextfield.delegate = self
        addressTextField.delegate = self
        PasswordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        
        nameTextfield.layer.borderWidth = 2
        nameTextfield.layer.borderColor = UIColor.lightGray.cgColor
        
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        PasswordTextField.layer.borderWidth = 2
        PasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        confirmPasswordTextField.layer.borderWidth = 2
        confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.backgroundColor = .blue
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 20
    }
    
    
    
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
        
        if nameTextfield.text == "" || addressTextField.text == "" || PasswordTextField.text == "" || confirmPasswordTextField.text == "" {
            registerButton.isEnabled = false
        } else {
            
            if PasswordTextField.text == confirmPasswordTextField.text {
                registerButton.isEnabled = true
                PasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
            }else{
                PasswordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                registerButton.isEnabled = false
                
            }
        }
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //        quando clica no retorn
        textField.resignFirstResponder()
        
<<<<<<< HEAD:primeiroDesafioTextFieldDelegate/primeiroDesafioTextFieldDelegate/ViewController.swift
        
        
        
=======
        return true
>>>>>>> exercicios/SegundoExercicioUITextFieldDelegate:testeGit/primeiroDesafioTextFieldDelegate/primeiroDesafioTextFieldDelegate/ViewController.swift
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //        quando clica no retorn
        textField.resignFirstResponder()
        
        return true
    }
}
