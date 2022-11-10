//
//  FlowersTableViewCell.swift
//  TableViewCollectionViewAvancada
//
//  Created by Lorena on 09/11/22.
//

import UIKit

class FlowersTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "FlowersTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    var data: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        
    }
    
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(FlowersCollectionViewCell.nib(), forCellWithReuseIdentifier: FlowersCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = .zero
        collectionView.collectionViewLayout = layout
        }
    
    func setupCell(data: Flower){
        self.data = data.listFlowers
        self.titleLable.text = data.name
    }
    
}
extension FlowersTableViewCell: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FlowersCollectionViewCell.identifier, for: indexPath) as? FlowersCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension FlowersTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 250)
    }
}
