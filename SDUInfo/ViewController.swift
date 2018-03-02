//
//  ViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/1/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideView: UIView!
    
    @IBOutlet weak var viewConst: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurView.layer.cornerRadius = 15
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 0.6
        sideView.layer.shadowOffset = CGSize(width: 5, height: 0) 

        viewConst.constant = -175
        
        // Do any additional setup after loading the view.
    }

    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed{
            let translation = sender.translation(in: self.view).x
            if translation > 0{ //swipe right
                if  viewConst.constant < 20{
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConst.constant += translation / 10
                        self.view.layoutIfNeeded()
                        })
                }
            }
            else{ //swipe left
                if  viewConst.constant > -175{
                    UIView.animate(withDuration: 0.2, animations: {
                        self.viewConst.constant += translation / 10
                        self.view.layoutIfNeeded()
                    })
                }
            }
        }
        else if sender.state == .ended{
            if viewConst.constant < -100{
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConst.constant = -175
                    self.view.layoutIfNeeded()
                })
            }
            else{
                UIView.animate(withDuration: 0.2, animations: {
                    self.viewConst.constant = 0
                    self.view.layoutIfNeeded()
                })
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
