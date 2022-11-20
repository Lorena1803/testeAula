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
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configConfigImagePicker()
        configTextFieldDelegate()

    }
    
    func configTextFieldDelegate(){
        nameTextField.delegate = self
    }
    
    func configConfigImagePicker(){
        imagePicker.delegate = self
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AddPhotoTableViewCell.nib(), forCellReuseIdentifier: AddPhotoTableViewCell.identifier)
    }
    
    func textFieldIsNotEmpty() -> Bool {
        if nameTextField.text?.isEmpty ?? true || nameTextField.text?.hasPrefix(" ") ?? true {
            return false
        } else {
            return true
        }
    }

    
    @IBAction func addPhotoAndNameTapped(_ sender: UIButton) {
        if textFieldIsNotEmpty() {
            data.append(Person(name: nameTextField.text ?? "", photo: personImageView.image ?? UIImage()))
            tableView.reloadData()
            nameTextField.text = ""
        } else {
            let alertController = UIAlertController(title: "Atenção!!", message: "Informe o nome corretamente", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .destructive)
            alertController.addAction(ok)
            present(alertController, animated: true)
        }
    }
    
    
    @IBAction func editPhotoTapped(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        imagePicker.sourceType = .camera
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
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
        return 125
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        data.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

extension Tela03ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension Tela03ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.personImageView.image = image
        }
        picker.dismiss(animated: true)
    }
}
