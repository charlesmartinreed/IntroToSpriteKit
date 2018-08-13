//
//  GameScene.swift
//  IntroToSpriteKit
//
//  Created by Charles Martin Reed on 8/13/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let myNode = SKSpriteNode(imageNamed: "Frisk-0")
    let node2 = SKSpriteNode(imageNamed: "Frisk-0")
    
    override func didMove(to view: SKView) {
        
        myNode.position = CGPoint(x: 0, y: 350)
        node2.position = CGPoint(x: 0, y: -150)
        
        myNode.setScale(0.65)
        node2.setScale(0.90)
       
        //MARK: - SKPhysics
        //affected by gravity by default
       // myNode.physicsBody = SKPhysicsBody()
        
        //adding shapes to our physics body
        myNode.physicsBody = SKPhysicsBody(circleOfRadius: myNode.size.height / 2)
        node2.physicsBody = SKPhysicsBody(circleOfRadius: node2.size.height / 2)
        
        //removing effects of gravity
        myNode.physicsBody?.affectedByGravity = true
        node2.physicsBody?.affectedByGravity = false
        
        //removing dynamicism from a node to make it 'static', meeaning it doesn't respond to physics events in the samy way - in this example, it won't be pushed by the falling body above it
        node2.physicsBody?.isDynamic = false
        
        
        self.addChild(myNode)
        self.addChild(node2)
        
        
        
    }
    
    
    
}
