//
//  File.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import Foundation
import UIKit

struct News{
    var newsTitle: String
    var newsImage: UIImage
    var newsFull: String
    
    init(_ newsTitle: String, _ newsImage: UIImage,_ newsFull: String){
        self.newsTitle = newsTitle
        self.newsImage = newsImage
        self.newsFull = newsFull
    }
}
