//
//  ViewController.swift
//  desafioTableViewAvancada
//
//  Created by Lorena on 29/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    }


extension ViewController: UITableViewDelegate {
    
    
}




