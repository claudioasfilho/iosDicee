//
//  ViewController.swift
//  Dicee
//
//  Created by Claudio Filho on 10/30/18.
//  Copyright © 2018 Claudio Filho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var  randomDiceIndex1 : Int = 0
    var  randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1+1)
        print(randomDiceIndex2+1)
        
        switch randomDiceIndex1 {
        case 0:
            diceImageView1.image = UIImage(named: "dice1" )
        case 1:
            diceImageView1.image = UIImage(named: "dice2" )
        case 2:
            diceImageView1.image = UIImage(named: "dice3" )
        case 3:
            diceImageView1.image = UIImage(named: "dice4" )
        case 4:
            diceImageView1.image = UIImage(named: "dice5" )
        case 5:
            diceImageView1.image = UIImage(named: "dice6" )
        default:
            diceImageView1.image = UIImage(named: "dice1" )
        }
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2] )
        
        
    }
    
}

