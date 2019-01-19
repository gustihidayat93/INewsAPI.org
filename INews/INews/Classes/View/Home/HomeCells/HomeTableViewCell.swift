//
//  HomeTableViewCell.swift
//  INews
//
//  Created by Gusti Hidayat on 16/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgNews: UIImageView!
    @IBOutlet weak var titleNews: UILabel!
    @IBOutlet weak var news: UILabel!
    @IBOutlet weak var timeNews: UILabel!
    @IBOutlet weak var locationNew: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var noteNews: UIButton!
}
