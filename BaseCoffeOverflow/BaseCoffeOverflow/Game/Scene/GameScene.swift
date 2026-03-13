//
//  GameScene.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 12/03/26.
//

import SpriteKit

public class GameScene: SKScene {
    
    private let cycleController: CycleController
    private let stateController: StateController
    
    var entityManager: EntityManager!
    
    init(cycleController: CycleController, stateController: StateController,size: CGSize) {
          self.cycleController = cycleController
          self.stateController = stateController
          super.init(size: size)
         
          self.entityManager = EntityManager(scene: self)
      }
    
    public override convenience init(size: CGSize) {
        fatalError("Use GameScene(matchManager:size:) instead")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public override func didMove(to view: SKView) {
        setupBorders()
    }
    
    func setupBorders() {
        self.physicsBody = nil
        let barrierY = frame.minY + 220
        var bodies = [SKPhysicsBody]()


        let leftEdge = SKPhysicsBody(edgeFrom: CGPoint(x: frame.minX, y: frame.minY), to: CGPoint(x: frame.minX, y: frame.maxY))
        bodies.append(leftEdge)
        
        let rightEdge = SKPhysicsBody(edgeFrom: CGPoint(x: frame.maxX, y: frame.minY), to: CGPoint(x: frame.maxX, y: frame.maxY))
        bodies.append(rightEdge)
        
        let edgeBody = SKPhysicsBody(bodies: bodies)
        edgeBody.categoryBitMask = PhysicsCategory.edge
        
        edgeBody.isDynamic = false
        edgeBody.affectedByGravity = false
        edgeBody.allowsRotation = false
        
        self.physicsBody = edgeBody
    }
    
}
