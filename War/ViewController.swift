//
//  ViewController.swift
//  War
//
//  Created by Chrishon Wyllie on 1/3/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var playerScore: Int = 0
    @IBOutlet weak var playerScoreLabel: UILabel!
    var enemyScore: Int = 0
    
    //Notice that some cards are named, and others are merely called card (number)
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8",
        "card9", "card10", "jack", "queen", "king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first image view
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a String with the random number
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        
        
        
        
        //Randomize a number fot the second image view
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        //Construct a String with the second random number
        let secondCardString: String = self.cardNamesArray[secondRandomNumber]
        
        //Set the first card image view to the asset corresponding to the randomized number. 
        //Same as the previous code for the firstCardImage
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        //Determine the higher card
        if(firstRandomNumber > secondRandomNumber){
            //TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            //TODO: numbers are equal
        }
        else {
            //TODO: second card is larger
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

