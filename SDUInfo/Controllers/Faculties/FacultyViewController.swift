//
//  FacultyViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class FacultyViewController: UIViewController {
    
    
    //Faculties
    
    
    var faculites: [Faculty] = [
        Faculty.init("Faculty of Engineering and \n Natural sciences", ["5B070300 Information systems", "5В070400 Computer systems and software", "5В060100 Mathematics (science)"], "Students of this faculty will become very good specialists in highly demand spheres of sciences engineers. There are lots of opportunities for students of this faculty including open-source laboratories for sciences and professionals researchs, big amount of internship offers of big local and foreign companies, very big library foundation for self-study and strong prefessionals who will share their knowledge and experience.", UIImage(named: "Engineering")),
        Faculty.init("Faculty of Law and Social sciences", ["5B030100 Jurisprudence", "5В020200 International relations", "5В030200 International law", "5B020300 History", "5В050400 Journalism"], "Bachelors in the field of International Law can find themselves in such areas as diplomatic service, legal practice area of national security, solution of problems of legal regulation of foreign policy and foreign economic activity of the Republic of Kazakhstan, as well as in various authorities of state power and administration, in the sphere of contractual-and-legal regulation of problems of development of world politics and international relations.", UIImage(named: "Law")),
        Faculty.init("Faculty of Education and Humanities", ["5B020500 Philology", "5В021000 Foreign philology", "5B011700 Kazakh language and literature", "5В011900 Foreign language: two foreign languages", "5В020700 Translation studies","5B012500 Chemistry - Biology (pedagogical)", "5B012800 Physics - Informatics (pedagogical)", "5В010900 Mathematics (pedagogical)"], "This faculty serves as an extraordinary center of creativity, inquiry, and discovery with a proud tradition of leadership in scholarship. The undergraduates become familiar with methods of linguistic and literary analysis and acquire a range of generic skills, including the ability for abstract and analytical thinking and synthesis of ideas, the ability to communicate both orally and through the written word in the national language, and the ability to work autonomously and in a team. The program offers not only opportunities for study of all aspects of Kazakh language and its literature, but also a well-developed, diverse, and active community within the University.", UIImage(named: "Humanities")),
        Faculty.init("SDU Business school", ["5B050800 Accounting and auditing", "5В051100 Marketing", "5В050900 Finance", "5В050700 Management", "5В050600 Economics"], "Students of SDU Business School can perform analytical, research, organizational, managerial and educational (teaching) activities in the following areas: sectoral and regional markets, the economic entities of various organizational and legal forms; improvement of enterprise management system; formation of economic strategy and policy of the enterprises; ", UIImage(named: "Business"))
    ]
    
    //Outlets
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var facultyNameLabel: UILabel!
    @IBOutlet weak var specializationsLabel: UILabel!
    @IBOutlet weak var facultyImage: UIImageView!
    @IBOutlet weak var aboutFacultyLabel: UILabel!
    @IBOutlet weak var facultiesSegmentControll: UISegmentedControl!
    @IBAction func facultiesSCValueChanges(_ sender: Any) {
        self.viewDidLoad()
    }
    
    //View Loaded
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Faculties"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        switch facultiesSegmentControll.selectedSegmentIndex {
        case 0:
            loadFaculty(caseNumber: 0)

            break
        case 1:
            loadFaculty(caseNumber: 1)
            break
        case 2:
            loadFaculty(caseNumber: 2)
            break
        case 3:
            loadFaculty(caseNumber: 3)
            break
        default:
            break
        }
    }
    
    
    
    func loadFaculty(caseNumber : Int){
        specializationsLabel.text = ""
        facultyNameLabel.text = faculites[caseNumber].facultyName
        aboutFacultyLabel.text = faculites[caseNumber].facultyDescription
        facultyImage.image = faculites[caseNumber].facultyImage
        facultyImage.contentMode = .scaleAspectFit
        facultyNameLabel.adjustsFontSizeToFitWidth = true
        facultyNameLabel.minimumScaleFactor = 0.2
        facultyNameLabel.numberOfLines = 2
        aboutFacultyLabel.numberOfLines = 10
        for i in faculites[caseNumber].facultySpecializations{
            specializationsLabel.text = (specializationsLabel.text ?? "") + "\(i) \n"
        }
        specializationsLabel.numberOfLines = 20
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
