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
        self.tabBar.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.tabBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.viewControllers = self.setupViews()
    }
    
    private func setupViews() -> [UIViewController] {
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(title: "Kompas.id", image: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate))
        home.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0, green: 0.08881659061, blue: 1, alpha: 1)], for: UIControlState.selected)
        home.tabBarItem.tag = 1
        
        let paper = PaperViewController()
        paper.tabBarItem = UITabBarItem(title: "ePaper", image: #imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate))
        paper.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0, green: 0.08881659061, blue: 1, alpha: 1)], for: UIControlState.selected)
        paper.tabBarItem.tag = 1
        
        let ebook = EBookViewController()
        ebook.tabBarItem = UITabBarItem(title: "book", image: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate))
        ebook.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0, green: 0.08881659061, blue: 1, alpha: 1)], for: UIControlState.selected)
        ebook.tabBarItem.tag = 1
        
        let views = [home, paper, ebook].map { UINavigationController(rootViewController: $0) }
        return views
    }
}
