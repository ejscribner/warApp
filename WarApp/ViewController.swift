//
//  ViewController.swift
//  WarApp
//
//  Created by Elliot Scribner on 12/31/17.
//  Copyright © 2017 Elliot Scribner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Functions
    @IBAction func dealTapped(_ sender: Any) {
        //code for deal function
        //randomize numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //change images
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber { //player wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber { //cpu wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else { //war
            
        }
        
    }
    
}

