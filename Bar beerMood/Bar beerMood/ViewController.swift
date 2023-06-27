//
//  ViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 22.06.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var NamesOfBeer: [UILabel]!
    
    @IBOutlet var quantityOfBear: [UILabel]!

    
    var beers = [
        Beer(name: "Лидскае Пшеничное",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .lidscaePshenichnae),
        
        Beer(name: "Лидскае Вечер в Брюгге",
             country: "🇧🇾",
             colorType: .dark,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .vetcherVBrugge),
        
        Beer(name: "Лидскае Hoppy Lager",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .lidskaeHoppyLager),
        
        Beer(name: "Лидскае Premium",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .lidscaePremium),
        
        Beer(name: "Лидскае Портер",
             country: "🇧🇾",
             colorType: .dark,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .lidskaePorter),
        
        Beer(name: "Лидскае Pilsner",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .lidslaePilsner),
        
        Beer(name: "Koronet PUB Draught",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .koronetPubDraught),
        
        Beer(name: "Koronet Stout Original",
             country: "🇧🇾",
             colorType: .dark,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .koronetStoutOriginal),
        
        Beer(name: "Garage Lemon drink",
             country: "🇷🇺",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .garageLemonDrink),
        
        Beer(name: "Koronet Lager",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .koronetLager),
        
        Beer(name: "Warsteiner Light Pilsner",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .warsteinerLightPilsner),
        
        Beer(name: "Warsteiner Premium Beer",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .warsteinerPremiumBeer),
        
        Beer(name: "Аливария Золотое",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .alivariaZolotoe),
        
        Beer(name: "Аливария Белое золото",
             country: "🇧🇾",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .alivariaBeloeZoloto),
        
        Beer(name: "Балтика Мягкое",
             country: "🇷🇺",
             colorType: .light,
             price: (1.5, 2, 3),
             volume: 100,
             photo: .baltikaMygkoe)
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        completeBeers()
        print(beers.count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let sender = sender as? UIButton else {return}
        let beerIndex = sender.tag
        guard let destinationController = segue.destination as? AboutBeerViewController else {return}
        destinationController.beerIndex = beerIndex
        destinationController.beer = beers[beerIndex]
        destinationController.parentController = self

    }

    
    
    func completeBeers () {
        
        for index in (0..<NamesOfBeer.count)   {
            
            NamesOfBeer[index].text = "\(beers[index].name) \(beers[index].country)"
            quantityOfBear[index].text = "Остаток пива: \(beers[index].volume)"
            
        }
        
    }
    
}

