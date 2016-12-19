//
//  TableViewCell1.swift
//  Homework3th
//
//  Created by CHAMROEUN CHUN on 12/19/16.
//  Copyright © 2016 Chamroeun Chun. All rights reserved.
//

import UIKit
import Kingfisher

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var articleDescriptionLabel: UILabel!
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    
    @IBOutlet weak var articleImageView: UIImageView!
    
    func customCell(article: Article) {
        imageView?.layer.cornerRadius = 3
        
        
        articleTitleLabel.text = article.title?.capitalized
        articleDescriptionLabel.text = article.description
        imageView?.kf.setImage(with: URL(string: (article.image?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))!))
    
    }
    
    
}
