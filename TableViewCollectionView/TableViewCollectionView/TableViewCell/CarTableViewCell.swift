//
//  CarTableViewCell.swift
//  TableViewCollectionView
//
//  Created by Lorena on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = []
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
    }
    
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CarCollectionViewCell.nib(), forCellWithReuseIdentifier: CarCollectionViewCell.identifier)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = . horizontal
            layout.estimatedItemSize = .zero
            
        }
        
        
    }
    
    func setupCell(title: String, name: [String]){
        self.data = name
        titleLabel.text = title
    }
   
}

extension CarTableViewCell: UICollectionViewDelegate{
    
}

extension CarTableViewCell: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier , for: indexPath) as? CarCollectionViewCell
        cell?.setupCell(carImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}


extension CarTableViewCell: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200)
    }
}
