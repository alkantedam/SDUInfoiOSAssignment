//
//  GradientImageView.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

//
//  GradientImageView.swift
//  GradientView_Swift3
//
//  Created by HuyVuong on 1/10/17.
//  Copyright © 2017 HuyVuong. All rights reserved.
//

import Foundation
import UIKit

class UIGradientImageView: UIImageView
{
    let myGradientLayer: CAGradientLayer
    
    override init(frame: CGRect){
        myGradientLayer = CAGradientLayer()
        super.init(frame: frame)
        self.setup()
        addGradientLayer()
    }
    
    func addGradientLayer(){
        if myGradientLayer.superlayer == nil{
            self.layer.addSublayer(myGradientLayer)
        }
    }
    
    required init(coder aDecoder: NSCoder){
        myGradientLayer = CAGradientLayer()
        super.init(coder: aDecoder)!
        self.setup()
        addGradientLayer()
    }
    
    func getColors() -> [CGColor] {
        return [UIColor.clear.cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.6).cgColor]
    }
    
    func getLocations() -> [CGFloat]{
        return [0.4,  0.9]
    }
    
    func setup() {
        myGradientLayer.startPoint = CGPoint(x: 0.6, y: 0)
        myGradientLayer.endPoint = CGPoint(x: 0.6, y: 1)
        
        let colors = getColors()
        myGradientLayer.colors = colors
        myGradientLayer.isOpaque = false
        myGradientLayer.locations = getLocations() as [NSNumber]?
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myGradientLayer.frame = self.layer.bounds
    }
}

