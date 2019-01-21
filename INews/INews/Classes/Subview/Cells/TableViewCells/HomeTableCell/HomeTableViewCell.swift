//
//  HomeTableViewCell.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import Kingfisher
import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet var imgNews: UIImageView!
    @IBOutlet var titleNews: UILabel!
    @IBOutlet var news: UILabel!
    @IBOutlet var timeNews: UILabel!
    @IBOutlet var locationNew: UILabel!
    
    var dataArticel: Articles? {
        didSet {
            let url = URL(string: dataArticel?.urlToImage ?? "")
            imgNews?.kf.setImage(with: url)
            titleNews.text = dataArticel?.title
            news.text = dataArticel?.description
            timeNews.text = dataArticel?.publishedAt
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var noteNews: UIButton!
}
