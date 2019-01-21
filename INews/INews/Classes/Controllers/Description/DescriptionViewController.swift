//
//  DescriptionViewController.swift
//  INews
//
//  Created by Gusti Hidayat on 18/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import Kingfisher
import UIKit
class DescriptionViewController: UIViewController {
    @IBOutlet var imgnews: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!

    var dataArticel: Articles?

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: dataArticel?.urlToImage ?? "")
        imgnews?.kf.setImage(with: url)
        titleLabel.text = dataArticel?.title
        contentLabel.text = dataArticel?.content
        authorLabel.text = dataArticel?.author
    }
}
