//
//  GameManager.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 13/03/26.
//

import Foundation

class StateController {
    
    var lives: Int
    var score: Int = 0
   
    
    init(lives: Int = 3) {
        self.lives = lives
    }
    func loseLife() {
        
        lives -= 1
        
        if lives <= 0 {
            gameOver()
        }
    }
    
    func resetGame() {
        lives = 3
    }
    
    func gameOver() {
        
    }
    
    func addScore(){
        
    }
}
