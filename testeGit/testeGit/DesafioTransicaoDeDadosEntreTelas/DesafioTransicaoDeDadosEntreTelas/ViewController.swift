//
//  ViewController.swift
//  DesafioTransicaoDeDadosEntreTelas
//
//  Created by Lorena on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    @IBOutlet weak var yearsTextField: UITextField!
    
    @IBOutlet weak var profissaoTextField: UITextField!
    
    @IBOutlet weak var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedResultButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        let lorena = Pessoa(nome: nameTextField.text ?? "", sobrenome: lastnameTextField.text ?? "", idade: yearsTextField.text ?? "" , profissao: profissaoTextField.text ?? "")
        vc?.lorena = lorena
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
        lastnameTextField.text = ""
        yearsTextField.text = ""
        profissaoTextField.text = "" 
    }
    
}
struct Pessoa {
    var nome: String
    var sobrenome: String
    var idade: String
    var profissao: String
}
