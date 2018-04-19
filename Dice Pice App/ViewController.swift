//
//  ViewController.swift
//  Dice Pice App
//
//  Created by Sahil Sharma on 07/04/18.
//  Copyright © 2018 Sahil Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var diceIndex1 : Int = 0
    var diceIndex2 : Int = 0
    
    let dices = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generateRandom()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onRollDiceBtnPressed(_ sender: UIButton) {
        
        generateRandom()
        
    }
    
    func generateRandom()
    {
        //Method of stdlib accepts an upper limit and generates a random number from 0 to upper-1.
        
        diceIndex1 = Int(arc4random_uniform(5))
        diceIndex2 = Int(arc4random_uniform(5))
        
        diceImageView1.image = UIImage(named: dices[diceIndex1])
        diceImageView2.image = UIImage(named: dices[diceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        generateRandom()
        
    }
    
    
    

}

