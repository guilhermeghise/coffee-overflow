//
//  MatchManager.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 12/03/26.
//

import Foundation
import GameKit
import SpriteKit

class CycleController {
    
    var currentCycle: Int
    
    init(startingCycle: Int = 1) {
        self.currentCycle = startingCycle
    }
    
    func restartGame() {
       
    }
    
    func nextCycle() {
        currentCycle += 1
        //
    }
    
}
