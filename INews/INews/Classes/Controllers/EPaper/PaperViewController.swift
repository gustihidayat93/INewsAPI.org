//
//  PaperViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class PaperViewController: UIViewController {
    @IBOutlet var magazineCV: UICollectionView!
    
    let cellidpaper = "PaperCollectionViewCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "MAGAZINE"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        setupcollection()
    }
    
    func setupcollection() {
        magazineCV.delegate = self
        magazineCV.dataSource = self
        magazineCV.register(UINib(nibName: cellidpaper, bundle: nil), forCellWithReuseIdentifier: cellidpaper)
    }
}

extension PaperViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellidpaper, for: indexPath) as! PaperCollectionViewCell
        cell.backgroundColor = .blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (magazineCV.frame.size.width - (8 * 2)) / 2
        let height = magazineCV.frame.size.height / 3
        return CGSize(width: width, height: height)
    }
}
