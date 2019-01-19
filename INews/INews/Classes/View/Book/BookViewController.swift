//
//  BookViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellId = "BookCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionComponent()
        
    }
    
    func setCollectionComponent() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: cellId, bundle: nil), forCellWithReuseIdentifier: cellId)
    }

}

extension BookViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! BookCollectionViewCell
        cell.backgroundColor = .red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.collectionView.frame.size.width - (8 * 3)) / 2
        let height = self.collectionView.frame.size.height / 2
        return CGSize(width: width, height: height)
    }
}
