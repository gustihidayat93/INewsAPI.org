//
//  EBookViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 20/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class EBookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var eBooktableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationComponent()
        eBooktableview.dataSource = self
        eBooktableview.delegate = self
        eBooktableview.rowHeight = UITableViewAutomaticDimension
        eBooktableview.estimatedRowHeight = 200
        eBooktableview.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "collection")
        eBooktableview.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func navigationComponent() {
        navigationItem.title = "E-BOOK"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 20
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "collection", for: indexPath) as! CollectionTableViewCell
            cell.delegate = self
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 130
        default:
            return 135
        }
    }
}

extension EBookViewController: CollectDelegate {
    func coldelegate() {
        navigationController?.pushViewController(StoryViewController(), animated: true)
    }
}
