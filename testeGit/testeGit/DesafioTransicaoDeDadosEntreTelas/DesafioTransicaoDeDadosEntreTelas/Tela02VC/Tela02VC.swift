//
//  Tela02VC.swift
//  DesafioTransicaoDeDadosEntreTelas
//
//  Created by Lorena on 18/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBOutlet weak var yearsLabel: UILabel!
    
    @IBOutlet weak var profissaoLabel: UILabel!
    
    var lorena: Pessoa?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = lorena?.nome
        lastnameLabel.text = lorena?.sobrenome
        yearsLabel.text = lorena?.idade
        profissaoLabel.text = lorena?.profissao

    }
    

    

}
