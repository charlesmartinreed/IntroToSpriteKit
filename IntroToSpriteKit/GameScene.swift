//
//  GameScene.swift
//  IntroToSpriteKit
//
//  Created by Charles Martin Reed on 8/13/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    let firstFrisk = SKSpriteNode(imageNamed: "Frisk-0")
    let secondFrisk = SKSpriteNode(imageNamed: "Frisk-0")
    
    override func didMove(to view: SKView) {
        
        //setting up our delegate for the physics, in order to detect physics events that happen in our view
        physicsWorld.contactDelegate = self
        
        firstFrisk.position = CGPoint(x: 0, y: 350)
        secondFrisk.position = CGPoint(x: 0, y: -150)
        
        firstFrisk.setScale(0.5)
        secondFrisk.setScale(0.5)
       
        //MARK: - SKPhysics
        //affected by gravity by default
       // myNode.physicsBody = SKPhysicsBody()
        
        //adding shapes to our physics body
        firstFrisk.physicsBody = SKPhysicsBody(circleOfRadius: firstFrisk.size.height / 2)
        secondFrisk.physicsBody = SKPhysicsBody(circleOfRadius: secondFrisk.size.height / 2)
        
        //removing effects of gravity
        firstFrisk.physicsBody?.affectedByGravity = true
        
        //MARK: - CategoryBitMask
        // is a number defining the type of object something is when considering collisions
        firstFrisk.physicsBody?.categoryBitMask = 0
        secondFrisk.physicsBody?.categoryBitMask = 1
        
        
        //MARK: - CollisionBitMask
        // is a number dfeining the category of objects that a given node should be able to collide with
        firstFrisk.physicsBody?.collisionBitMask = 0
        secondFrisk.physicsBody?.collisionBitMask = 0
        
        //because the categorybitmask and the collisionbitmask for the objects match, they will be able to collide
        //categoryBitMask == collisionBitMask means COLLISION
        //categoryBitMask != collisionBitMask means the objects pass through one another
        
        
        secondFrisk.physicsBody?.affectedByGravity = false
        
        //removing dynamicism from a node to make it 'static', meeaning it doesn't respond to physics events in the samy way - in this example, it won't be pushed by the falling body above it
        //secondFrisk.physicsBody?.isDynamic = false
        
        
     
        //MARK: - ContactTestBitMask is a number that defines which collisions we want to be notified about
        //needs delegate extension, view set as delegate, protocol methods
        firstFrisk.physicsBody?.contactTestBitMask = 1
        
        
        self.addChild(firstFrisk)
        self.addChild(secondFrisk)
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("We've made contact!")
    }
    
    func didEnd(_ contact: SKPhysicsContact) {
        //prints once the object has passed through
        print("The contact has ended")
    }
    
   
    
}
