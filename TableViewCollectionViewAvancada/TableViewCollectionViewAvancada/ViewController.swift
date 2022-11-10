//
//  ViewController.swift
//  TableViewCollectionViewAvancada
//
//  Created by Lorena on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var flowerList: [Flower] = [
                                Flower(name: "Rosa", listFlowers: ["flower2" , "rosa"]),
                                Flower(name: "Tulipa", listFlowers: ["flower3", "tulipa1"]),
                                Flower(name: "Margarida", listFlowers: ["flower4", "margarida"]),
                                Flower(name: "Amor Perfeito", listFlowers: ["flower5", "amorperfeito"]),
                                Flower(name: "Girassol", listFlowers: ["flower6", "girassol"])
                                
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()

    }
    
    func configTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FlowersTableViewCell.nib(), forCellReuseIdentifier: FlowersTableViewCell.identifier)
        
    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FlowersTableViewCell.identifier, for: indexPath) as? FlowersTableViewCell
        cell?.setupCell(data: flowerList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 333
    }
    
}
