//
//  ViewController.swift
//  DMTest
//
//  Created by Wesley Matlock on 4/20/15.
//  Copyright (c) 2015 insoc.net. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var rollLabel: UILabel!
  var dice = DiceUtilities(gameLevel: .Easy)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
//    println("The current action points: \(dice.getActionPoints())")

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func rollDice(sender: UIButton) {
    
    rollLabel.text =  "\(dice.getActionPoints())"

    
  }

}

