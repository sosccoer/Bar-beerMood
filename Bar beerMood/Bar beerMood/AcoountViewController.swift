//
//  AcoountViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 26.06.23.
//

import UIKit

class AcoountViewController: UIViewController {

    
    
    @IBOutlet weak var Instagram: UIButton!
    
    @IBOutlet weak var telegramm: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgInstagram = UIImage(named: "instagramIcon")
        Instagram.titleLabel?.text = " Insta "
        Instagram.setImage(imgInstagram, for: .normal )
        
        let telegramImage = UIImage(named: "telegramIcon")
        telegramm.setImage(telegramImage, for: .normal)

    }
    

    
    @IBAction func instagramAction(_ sender: UIButton) {
        guard let url = URL(string: "https://www.instagram.com/_soscooter_/") else {return}
        UIApplication.shared.open(url)
    }
    
    @IBAction func telegramAction(_ sender: UIButton) {
        guard let url = URL(string: "https://t.me/soscooter") else {return}
        UIApplication.shared.open(url)
    }
    
}
