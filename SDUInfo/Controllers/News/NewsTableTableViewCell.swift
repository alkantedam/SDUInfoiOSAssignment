//
//  NewsTableTableViewCell.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class NewsTableTableViewCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var gradientImage: UIGradientImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
