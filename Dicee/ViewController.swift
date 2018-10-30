//
//  ViewController.swift
//  Dicee
//
//  Created by Claudio Filho on 10/30/18.
//  Copyright © 2018 Claudio Filho. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    
    var  randomDiceIndex1 : Int = 0
    var  randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var diceLabel1: UILabel!
    
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
        
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print("Dice 1 = ", randomDiceIndex1+1)
        print("Dice 2 = ", randomDiceIndex2+1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1] )
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2] )
        diceLabel1.text = String(randomDiceIndex1+1)
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
}

