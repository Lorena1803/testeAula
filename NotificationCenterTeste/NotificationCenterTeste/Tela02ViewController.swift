//
//  Tela02ViewController.swift
//  NotificationCenterTeste
//
//  Created by Lorena on 22/11/22.
//

import UIKit

protocol Tela02ViewControllerProtocol: AnyObject {
    func tappedMacbook()
    func tappedImac()
}

class Tela02ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var macbookButton: UIButton!
    
    @IBOutlet weak var imacButton: UIButton!
    
    weak var delegate: Tela02ViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedMacbook(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .macbook, object: nil)
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    @IBAction func tappedImac(_ sender: UIButton) {
//        NotificationCenter.default.post(name: .imac, object: nil)
        delegate?.tappedImac()
        dismiss(animated: true)
    }
    
}
