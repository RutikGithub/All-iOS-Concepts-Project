//
//  PlayerListViewController.swift
//  TapBarNineteenPractical
//
//  Created by Mac on 01/05/23.
//

import UIKit

class PlayerListViewController: UIViewController {

    
    @IBOutlet weak var playerCollectionView: UICollectionView!
    
    var playerName:[String]=["Yuzvendra Chahal","Shikhar Dhawan","MS Dhoni","Shivam Dube","Ruturaj Gaikwad","Ravindra Jadeja","Kedar Jadhav","Virat Kolhi","Hardik Pandya","KL Rahul","Ambati Rayudu","Sanju Samson","Rohit Sharma"]
    var playerImage:[String]=["chahal","dhawan","dhoni","dube","gaikwad","jadeja","kolhi","pandya","rahul","rayudu","samson","sharma"]
    
    var playerDesc:[String]=["Yuzvendra Chahal is an Indian international cricketer who plays for the Indian cricket team in white ball cricket as a leg spin bowler. He plays for Haryana in domestic cricket and Rajasthan Royals in the Indian Premier League. He is a Right-arm leg break bowler.","Shikhar Dhawan is an Indian cricketer. A left-handed opening batsman, he captains Punjab Kings in the Indian Premier League and plays for Delhi in first-class cricket. At the 2013 Champions Trophy, 2015 World Cup, and 2017 Champions Trophy, Dhawan was the leading run-scorer for India. ","Mahendra Singh Dhoni, commonly known as MS Dhoni, is a former Indian cricketer and captain of the Indian national team in limited-overs formats from 2007 to 2017 and in Test cricket from 2008 to 2014, who plays as a Wicket-keeper-Batsman. ","Shivam Dubey is a 25-year-old cricketer who represents Mumbai in the Indian domestic cricket. He is touted to be the next big thing in Indian cricket. There are a very few genuine seam bowling all-rounders in domestic cricket and Shivam is one of them, not a lot of cricketers, at the moment, can match his all-round abilities in Indian domestic cricket.","Ruturaj Dashrat Gaikwad is an Indian international cricketer who plays for Maharashtra in domestic cricket and for the Chennai Super Kings in the Indian Premier League. He made his international debut for the India cricket team in July 2021 against Sri Lanka.","Ravindrasinh Anirudhsinh Jadeja, commonly known as Ravindra Jadeja, is an Indian international cricketer. He is an all-rounder, who bats left-handed and bowls left-arm orthodox spin. He was the captain of the Chennai Super Kings in the Indian Premier League. He represents Saurashtra in first-class cricket.","Virat Kohli (Hindi pronunciation: [ʋɪˈɾɑːʈ ˈkoːɦli] (listen); born 5 November 1988) is an Indian international cricketer and the former captain of the Indian national cricket team who plays as a right-handed batsman for Royal Challengers Bangalore in the IPL and for the Delhi in Indian domestic cricket. Widely regarded as one of the greatest batsmen of all time,[4] Kohli holds the records for scoring most runs in T20 internationals and in the IPL.","Hardik Himanshu Pandya is an Indian international cricketer who is the current vice-captain of the Indian cricket team in limited overs. An All-rounder who bats right-handed and bowls right-arm fast-medium, Pandya has played in all 3 formats for India.","Kannanur Lokesh Rahul is an Indian international cricketer who plays as a right-handed wicket-keeper batsmen for Karnataka at the domestic level and is the captain for Lucknow Super Giants in the Indian Premier League.","Ambati Thirupathi Rayudu is an Indian cricketer who currently captains the Baroda cricket team in the Syed Mushtaq Ali Trophy championship.","Sanju Viswanath Samson is an Indian international cricketer who captains Kerala in domestic cricket and Rajasthan Royals in Indian Premier League. A right-handed wicket-keeper-batter, he was the vice-captain of the Indian U-19 team for the 2014 Under-19 Cricket World Cup.","Rohit Gurunath Sharma, is an Indian international cricketer and the current captain of India men’s cricket team in all formats. Considered one of the best batsmen of his generation and one of greatest opening batters of all time, Sharma is known for his timing, elegance, six-hitting abilities and leadership skills."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
extension PlayerListViewController:UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        playerName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellData = playerCollectionView.dequeueReusableCell(withReuseIdentifier: "PlayerListCollectionViewCell", for: indexPath) as? PlayerListCollectionViewCell
        
        cellData?.playerImages.image = UIImage(named: playerImage[indexPath.row])
        cellData?.playerNames.text = playerName[indexPath.row]
        return cellData!
        
    }
    
    
}
extension PlayerListViewController:UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerDescriptionCollectionViewCell = self.storyboard?.instantiateViewController(withIdentifier: "PlayerDescriptionViewController") as? PlayerDescriptionViewController
        
        playerDescriptionCollectionViewCell?.container = playerDesc[indexPath.row]
        
        
        
        navigationController?.pushViewController(playerDescriptionCollectionViewCell!, animated: true)
    }
    
}
extension PlayerListViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var collectionItemWidth = playerCollectionView.bounds.width
        return CGSize(width: collectionItemWidth/2, height: collectionItemWidth/2)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
}
