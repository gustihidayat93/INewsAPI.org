//
//  MainViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.tabBar.sizeToFit()
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        self.tabBar.tintColor = #colorLiteral(red: 0.09792713543, green: 0.41419816, blue: 1, alpha: 1)
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        self.viewControllers = self.setupViews()
        
        
    }

    private func setupViews() -> [UIViewController] {
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(title: "Kompas.id", image: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate))
        home.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.09798456522, green: 0.4226708726, blue: 1, alpha: 1)], for: UIControlState.selected)
        home.tabBarItem.tag = 1
        
        
        let paper = PaperViewController()
        paper.tabBarItem = UITabBarItem(title: "ePaper", image:#imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate))
        paper.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.09798456522, green: 0.4226708726, blue: 1, alpha: 1)], for: UIControlState.selected)
        paper.tabBarItem.tag = 1
        
        let book = BookViewController()
        book.tabBarItem = UITabBarItem(title: "book", image: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate))
        book.tabBarItem.tag = 1
        
        let views = [home, paper,book ].map { UINavigationController(rootViewController: $0) }
        return views
    }
    
    
    
}

