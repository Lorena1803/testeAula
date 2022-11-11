//
//  Tela03ViewController.swift
//  PrimeiroProjetoTabbat
//
//  Created by Lorena on 10/11/22.
//

import UIKit

class Tela03ViewController: UIViewController {

    
    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var editPictureButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var data : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()

    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AddPhotoTableViewCell.nib(), forCellReuseIdentifier: AddPhotoTableViewCell.identifier)
    }

    
    @IBAction func addPhotoAndNameTapped(_ sender: UIButton) {
        
        
    }
}

extension Tela03ViewController: UITableViewDelegate{
    
}

extension Tela03ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AddPhotoTableViewCell.identifier, for: indexPath) as? AddPhotoTableViewCell
        cell?.setupCell(person: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 92
    }
}

