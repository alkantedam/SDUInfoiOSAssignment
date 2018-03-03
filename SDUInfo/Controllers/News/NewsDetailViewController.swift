//
//  NewsDetailViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/3/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var newsDetailImageView: UIImageView!
    @IBOutlet weak var newsDetailFullText: UILabel!
    @IBOutlet weak var newsDetailTitleLabel: UILabel!

    var newsDetailImage = UIImage()
    var newsDetailTitle =  ""
    var newsDetailFull = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        newsDetailImageView.image = newsDetailImage
        newsDetailTitleLabel.text = newsDetailTitle
        newsDetailFullText.text = newsDetailFull
        
        newsDetailFullText.numberOfLines = 10000
        newsDetailTitleLabel.numberOfLines = 4
        // Do any additional setup after loading the view.
    }


}
