//
//  ClubsViewController.swift
//  SDUInfo
//
//  Created by Alina on 3/2/18.
//  Copyright © 2018 a2b DesignLabs. All rights reserved.
//

import UIKit

class ClubsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var clubs: [Club] = [
        Club.init("Orlean", "Орлеан - танцевальный клуб. Один из самых первых клубов университета. Исключительно женский, исключительно талантливый и разносторонний. Клуб принимает девушек, владеющих любыми стилями танца: как современными, так и народными, так же может с легкостью предоставить  вам возможность выплеснуть свою энергию, непомерную тягу и любовь к танцам. Коллектив клуба состоит из очень дружелюбных и, в то же время, талантливых девушек, которые с легкостью смогут научить танцевать и дерево. В течение года клуб очень активен: выступления на мероприятиях, организации флэшмобов, встреча гостей нашего университета и другие большие праздники", UIImage(named: "orlean")),
        Club.init("MMDance", "MMDANCE би клубы 2010 жылы Айбек Есимовтың бастауымен құрылды. Клуб тек ер азаматтарға арналған. MMDANCE - университеттің атақты, белсенді клубтарының бірі. Клубтың басты мақсаты - cтуденттердің белсенділігін арттырып, би өнер түрін жетік үйренуге көмектесу. Сондай-ақ университет қабырғасында өтетін іс-шараларда өнер көрсетіп студенттердің көңілін көтеру.Әр жыл сайын кастинг өтіліп тұрады. Сонымен қатар жыл соңында «Есеп беру концертін» ұйымдастырады.", UIImage(named: "mm")),
        Club.init("Unity Dance", "UNITY Dance Club - один из танцевальных клубов Университета им. Сулеймана Демиреля. Клуб направлен на то, чтобы обучать студентов различным стилям уличных танцев, таким как Popping, Krump, Hip-Hop, House, также для того, чтобы студенты могли выражать свои эмоции и чувства, раскрепощаться с помощью танца, учиться быть уверенней перед публикой и развивать артистические способности.", UIImage(named: "unity")),
        Club.init("Art Club", "ART Club – сообщество самых творческих студентов университета. ART Club был образован в 2009 году, и с тех пор активно развивается. Задача клуба – объединить людей, заинтересованных в рисовании, театральном искусстве и рукоделии и дать им возможность развивать свои таланты. В ART Club проводятся занятия по академическому рисунку, созданию комиксов, рукоделию и театральному искусству.", UIImage(named: "art")),
        Club.init("IQ club", "Sana IQ Club - это студенческая организация, занимающая всесторонним просвещением и развитием студентов. Клуб занимается организацией интеллектуальных игр для эрудированных людей с широким кругозором. Игры «Что? Где? Когда?», Брейн-ринг, «Своя игра», «Лидера 21 века», IQ Olympiads и есть профиль клуба. Члены клуба играют не только внутри СДУ, но и борются с командами из других университетов, как республиканских, так и зарубежных, а так же принимают участие в съемках телевизионных шоу для интеллектуалов.", UIImage(named: "iq")),
         Club.init("Education Club", "Education Club – это клуб преуспевающих студентов, которые помогают всем желающим повысить их уровень знаний в интересующих областях как в рамках университета, так и за ними. За долгие годы успешной работы клуб регулярно проводит дополнительные занятия, организовывает мероприятия и реализовывает проекты приносящие пользу школьникам и студентам в сфере образования.", UIImage(named: "educ")),
         Club.init("Shapagat", "Благотворительный клуб Шапагат – один из старейших и почетных студенческих клубов СДУ, который был основан в 2001 году. В основном деятельность клуба заключается на благотворительной деятельности, молодые ребята делают добрые дела для саморазвития, а также улучшения мира.", UIImage(named: "shapagat")),
         Club.init("Vision", "Vision Club является одним из самых масштабных, передовых клубов SDU, который существует более 15 лет.\nОсновная цель клуба: всестороннее развитие девушки, как личности, укрепление в социальной сфере, консолидация усилий девушек на развитие креативности и новаторства. Клуб с удовольствием раскроет свои двери перед любой девушкой, желающей сделать в этой жизни что-то значимое. ", UIImage(named: "vision")),
         Club.init("PandUP", "PandUP - самый молодой клуб Университета, основанный в 2016 году Абаем Магауия. Клуб основан на студентах, имеющих абсолютно разные таланты. Каждый участник имеет многогранные шансы для реализаций собственных способностей. Например: организация мероприятия, работа в сфере PR-менеджмента, роль в короткометражке, гримёрство, режиссёрство.", UIImage(named: "pandup"))
        
    ]

    @IBOutlet weak var clubsCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clubsCollectionView.delegate = self
        clubsCollectionView.dataSource = self
        
        self.navigationItem.title = "Clubs"
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.tintColor = UIColor(red: 1.0/255.0, green: 1.0/255.0, blue: 1.0/255.0, alpha: 1.0)
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
         return clubs.count
    }
    
     
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = clubsCollectionView.dequeueReusableCell(withReuseIdentifier: "clubCell", for: indexPath) as! ClubCollectionViewCell
        
        cell.clubImage.image = clubs[indexPath.row].clubIcon
        cell.clubNameLabel.text = clubs[indexPath.row].clubName
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
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
