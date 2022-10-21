//
//  ViewController.swift
//  tableView
//
//  Created by Lorena on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Lorena" , "Gabriel" , "Igor" , "Adriano" , "Marlei"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }

    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource{
    
//    indicar a quantidade de linhas por sessão
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
//    popular a celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(name: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
}


