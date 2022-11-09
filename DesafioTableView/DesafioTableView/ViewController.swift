//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Lorena on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Cars] = [Cars(name: "Chevrolet", image: UIImage(named: "Chevrolet-Logo") ?? UIImage()),
                        Cars(name: "Fiat", image: UIImage(named: "fiat-logo-21") ?? UIImage()) ,
                        Cars(name: "Ford", image: UIImage(named: "Ford_logo") ?? UIImage()) ,
                        Cars(name: "Honda", image: UIImage(named: "Honda-Logo-PNG") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CellTableView.nib(), forCellReuseIdentifier: CellTableView.identifier)
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellTableView.identifier, for: indexPath) as? CellTableView
        cell?.setupCell(model: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        data.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(data[indexPath.row].name)
    }
}
