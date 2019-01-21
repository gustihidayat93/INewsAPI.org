//
//  HomeViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import Alamofire
import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    
    var articel: [Articles] = []
    let url = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=a1dbba539eef42d39bab55acaf5a9d8b"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  navigationItem.leftBarButtonItems = UIBarButtonItem(image: #imageLiteral(resourceName: "volume-level"), style: .plain, target: self, action: #selector(handleLeftButton) )
        
        setAlamofire()
        setupnavigationComponent()
        setupComponent()
    }
    
    func setAlamofire() {
        let params: [String: Any] = [
            "q": "bitcoin",
            "apiKey": "a1dbba539eef42d39bab55acaf5a9d8b"
        ]
        DispatchQueue.main.async {
            Alamofire.request(self.url, method: .get, parameters: params).responseData { response in
                print("==", response.result)
                switch response.result {
                case .success(let value):
                    let decoder = JSONDecoder()
                    do {
                        let base = try decoder.decode(EverythingBase.self, from: value)
                        base.articles?.forEach({ data in
                            self.articel.append(data)
//                            print("====", self.articel.last?.title)
                            self.tableView.reloadData()
                            
                        })
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                case .failure(let error):
                    print("===", error)
                }
            }
        }
    }
    
    func setupComponent() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 340
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.reloadData()
    }
    
    func setupnavigationComponent() {
        navigationItem.title = "KOMPAS.COM"
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        // navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1239502665, green: 0.3377272449, blue: 0.8827133566, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.dataArticel = articel[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DescriptionViewController()
        vc.dataArticel = articel[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
