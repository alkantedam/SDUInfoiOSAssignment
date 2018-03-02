//
//  Faculty.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import Foundation
import UIKit

struct Faculty{
    var facultyName: String?
    var facultySpecializations: [String]
    var facultyDescription: String?
    var facultyImage: UIImage?
    
    init(_ facultyName: String, _ facultySpecializations: [String], _ facultyDescription: String, _ facultyImage: UIImage?){
        self.facultyName = facultyName
        self.facultySpecializations = facultySpecializations
        self.facultyDescription = facultyDescription
        self.facultyImage = facultyImage
    }
}
