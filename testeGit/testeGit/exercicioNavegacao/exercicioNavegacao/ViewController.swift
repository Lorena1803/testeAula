//
//  ViewController.swift
//  exercicioNavegacao
//
//  Created by Lorena on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedModal(_ sender: UIButton) {
        let vc = UIStoryboard(name: "tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela02ViewController") as? tela02ViewController
        present(vc ?? UIViewController(), animated: true)
        
    }
    
    
    @IBAction func tappedPush(_ sender: UIButton) {
        let vc = UIStoryboard(name: "tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela02ViewController") as? tela02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    }
    


