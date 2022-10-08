//
//  ViewController.swift
//  Solid Dicee
//
//  Created by Duhan Boblanlı on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [ UIImage(named: "DiceOne"),
                       UIImage(named: "DiceTwo"),
                       UIImage(named: "DiceThree"),
                       UIImage(named: "DiceFour"),
                       UIImage(named: "DiceFive"),
                       UIImage(named: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Each element of diceArray is an optional variable. The result of randomElement() is also an optional variable
        // so result need to be unwrapped
        diceImageView1.image = diceImages.randomElement()!  //as! UIImage(parent) --> unwrapping
        diceImageView2.image = diceImages.randomElement()!  //as! UIImage(parent) --> unwrapping
    }
}

