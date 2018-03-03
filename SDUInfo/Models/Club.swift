//
//  Club.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import Foundation
import UIKit

class Club{
    var clubName: String?
    var clubDescription: String?
    var clubIcon: UIImage?
    
    init(_ clubName: String, _ clubDescription: String, _ clubIcon: UIImage?){
        self.clubName = clubName
        self.clubDescription = clubDescription
        self.clubIcon = clubIcon
    }
    
}
