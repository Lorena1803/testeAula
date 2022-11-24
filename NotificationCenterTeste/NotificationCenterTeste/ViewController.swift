//
//  ViewController.swift
//  NotificationCenterTeste
//
//  Created by Lorena on 22/11/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var appleImageView: UIImageView!
    @IBOutlet weak var emptyLabel: UILabel!
    @IBOutlet weak var clickHereButton: UIButton!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configObserver()

    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac), name: .imac, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)

    }
    
    @objc func updateImac(){
        appleImageView.image = UIImage(named: "imac_pro")
        emptyLabel.text = "Imac das Galáxias"
        view.backgroundColor = .cyan
    }
    
    @objc func updateMacbook(){
        appleImageView.image = UIImage(named: "macbook_pro")
        emptyLabel.text = "Macbook Pro"
        view.backgroundColor = .red
    }
    
    @IBAction func tappedClickButton(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewControllerProtocol
                selectionVC?.modalPresentationStyle = .fullScreen
                self.present(selectionVC ?? UIViewController(), animated: true)
    }
    
}

