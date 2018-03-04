//
//  ContactsViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/3/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBAction func instaButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"We on Instagram",
                                      message:"@sdukz",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func fbButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"We on Facebook",
                                      message:"facebook.com/sdukz/",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func twitterButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"We on Twitter",
                                      message:"twitter.com/sdukz/",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    @IBAction func askButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"We on AskFM",
                                      message:"ask.fm/sdukz",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func vkButton(_ sender: Any) {
        let alert = UIAlertController(title:"We in VK",
                                      message:"vk.com/sdukz",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func watsappButon(_ sender: UIButton) {
        let alert = UIAlertController(title:"We in WhatsApp",
                                      message:"7 702 000 11 33 ",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func emailButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"Our e-mail",
                                      message:"info@sdu.edu.kz",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func locationButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"Our location",
                                      message:"Abylai khan street 1/1 \nAlmaty, Karasay \nKaskelen city, 040900, Kazakhstan \nTel.: +7 727 307 95 60/65 (220, 231, 455)",
                                       preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Contacts"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
    self.navigationController?.navigationBar.barTintColor = UIColor.black
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
