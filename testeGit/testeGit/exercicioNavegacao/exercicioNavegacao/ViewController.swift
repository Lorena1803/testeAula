//
//  ViewController.swift
//  exercicioNavegacao
//
//  Created by Lorena on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonTela1: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButtonTela1(_ sender: UIButton) {
        performSegue(withIdentifier: "tela2", sender: nil)
    }
    
}

