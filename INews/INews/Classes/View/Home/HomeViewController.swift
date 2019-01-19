//
//  HomeViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupComponent()
        setupnavigationComponent()
    
   
    }
    func setupComponent() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 340
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func setupnavigationComponent()  {
        navigationItem.title = "KOMPAS.COM"
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1239502665, green: 0.3377272449, blue: 0.8827133566, alpha: 1)
        
        
    }
    
    @objc func buttonAction() {
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DescriptionViewController()
        navigationController?.pushViewController(vc, animated: true)
    }




}
