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
        self.tabBar.backgroundColor = #colorLiteral(red: 0.70196, green: 0.84706, blue: 0.99216, alpha: 1)
        self.tabBar.isTranslucent = true
        self.tabBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        self.viewControllers = self.setupViews()
    }
  //  func rightButton() {
  //      let barButton = UIBarButtonItem(image: UIImage(named: "list"), style: <#T##UIBarButtonItemStyle#>, target: <#T##Any?#>, action: <#T##Selector?#>)
  //  }
 

    
    private func setupViews() -> [UIViewController] {
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(title: "Kompas.id", image: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "smartphone").withRenderingMode(.alwaysTemplate))
        home.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.9120313721, green: 0.1742362234, blue: 0.002568493151, alpha: 1)], for: UIControlState.selected)
        home.tabBarItem.tag = 1
        
        let paper = PaperViewController()
        paper.tabBarItem = UITabBarItem(title: "ePaper", image: #imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "newspaper-folded").withRenderingMode(.alwaysTemplate))
        paper.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.9120313721, green: 0.1742362234, blue: 0.002568493151, alpha: 1)], for: UIControlState.selected)
        paper.tabBarItem.tag = 1
        
        let ebook = EBookViewController()
        ebook.tabBarItem = UITabBarItem(title: "book", image: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate), selectedImage: #imageLiteral(resourceName: "open-book-top-view").withRenderingMode(.alwaysTemplate))
        ebook.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.9120313721, green: 0.1742362234, blue: 0.002568493151, alpha: 1)], for: UIControlState.selected)
        ebook.tabBarItem.tag = 1
        
        let views = [home, paper, ebook].map { UINavigationController(rootViewController: $0) }
        return views
    }
}
