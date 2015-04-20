//
//  DiceUtilities.swift
//  DMTest
//
//  Created by Wesley Matlock on 4/20/15.
//  Copyright (c) 2015 insoc.net. All rights reserved.
//

import Foundation

enum DiceLevel: Int {
  case Easy, Medium, Hard

  func getDiceSideAmount() -> Int {
    switch self {
    case .Easy: return 6
    case .Medium: return 8
    case .Hard: return 6
    }
  }
  
  func getActionPointsForRole(role: Int) ->Int {
    switch self {
    case .Easy:
      switch role {
      case 1,2: return 1
      case 3,4: return 2
      case 5,6: return 3
      default: return -1
      }
    case .Medium:
      switch role {
      case 1,2: return 0
      case 3,4: return 1
      case 5,6: return 2
      case 7,8: return 3
      default: return -1
      }
    case .Hard:
      switch role {
      case 1: return 0
      case 2,3: return 1
      case 4,5: return 2
      case 6: return 3
      default: return -1
      }
    }
  }
  
}

class DiceUtilities {
  
  var gameLevel:DiceLevel
  
  required init(gameLevel: DiceLevel) {
    self.gameLevel = gameLevel
  }
  
  func getActionPoints() -> Int {
    
    var actionPoints = -1
    while actionPoints == -1 {
      var roll = Int (arc4random_uniform(UInt32 (gameLevel.getDiceSideAmount())))
      actionPoints =  gameLevel.getActionPointsForRole(roll)
    }
    
    return actionPoints
  }
  
}
