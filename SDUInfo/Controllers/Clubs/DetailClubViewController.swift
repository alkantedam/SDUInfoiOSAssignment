//
//  DetailClubViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class DetailClubViewController: UIViewController {

    @IBOutlet weak var detailClubNameLabel: UILabel!
    @IBOutlet weak var detailClubImageView: UIImageView!
    @IBOutlet weak var detailClubDescriptionLabel: UILabel!
    
    var detailClubName = ""
    var detailClubImage = UIImage()
    var detailClubDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailClubNameLabel.text! = detailClubName
        detailClubImageView.image = detailClubImage
        detailClubDescriptionLabel.text! = detailClubDescription
        detailClubDescriptionLabel.numberOfLines = 20
        // Do any additional setup after loading the view.
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
