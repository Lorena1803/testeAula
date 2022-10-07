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
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedTela2(_ sender: UIButton) {
        performSegue(withIdentifier: "tela2", sender: nil)
    }
    
    
    
    }
    


