//
//  PaperViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class PaperViewController: UIViewController {

    @IBOutlet weak var magazineCV: UICollectionView!
    
    let cellidpaper = "PaperCollectionViewCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MAGAZINE"
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1239502665, green: 0.3377272449, blue: 0.8827133566, alpha: 1)
        setupcollection()
    }
    func setupcollection () {
        magazineCV.delegate = self
        magazineCV.dataSource = self
        magazineCV.register(UINib(nibName: cellidpaper, bundle: nil), forCellWithReuseIdentifier: cellidpaper)
    }


}
extension PaperViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellidpaper, for: indexPath) as! PaperCollectionViewCell
        cell.backgroundColor = .blue
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.magazineCV.frame.size.width - (8 * 2)) / 2
        let height = self.magazineCV.frame.size.height / 3
        return CGSize(width: width, height: height)
    }
    
}
