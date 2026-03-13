//
//  EntityManager.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 12/03/26.
//

import Foundation
import GameplayKit
import SpriteKit

public final class EntityManager {
    private var entities = Set<GKEntity>()
    private var scene: SKScene

    init(scene: SKScene) {
        self.scene = scene
    }

    func add(entity: GKEntity) {
        entities.insert(entity)

        if let node = entity.component(ofType: GKSKNodeComponent.self)?.node {
            scene.addChild(node)
        }
    }
    
    func remove(entity: GKEntity) {
        entities.remove(entity)
        
        if let node = entity.component(ofType: GKSKNodeComponent.self)?.node {
            node.removeFromParent()
        }
    }
    
    func getEntities() -> Set<GKEntity> {
        entities
    }
}
