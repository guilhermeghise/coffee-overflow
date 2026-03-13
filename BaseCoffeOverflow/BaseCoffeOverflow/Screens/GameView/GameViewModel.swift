//
//  GameViewModel.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 12/03/26.
//
import Foundation
import SwiftUI
import SpriteKit

@Observable
class GameViewModel {
    
    let stateController: StateController
    let cycleController: CycleController
    let scene: GameScene
    
    init() {
        stateController = StateController()
        cycleController = CycleController()
        
        scene = GameScene(
            cycleController: cycleController, stateController: stateController,
                 size: .zero
        )

        scene.scaleMode = .resizeFill
    }
}
    
    

