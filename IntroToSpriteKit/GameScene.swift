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
    
    //Nodes are things we see in our game. An image of a player, for instance is a SKSpriteNode
    //let myNode = SKSpriteNode(color: .red, size: CGSize(width: 200, height: 200))
    let myNode = SKSpriteNode(imageNamed: "Frisk-0")
    var myNodeIsVisible = false
    
    override func didMove(to view: SKView) {
        //think of this as "viewDidLoad"
        
        //position the node in the center of the scene
        //the larger node is placed in the GameScene editor
        //x and y are normal, positive to the right and up, negative to the left and down
        myNode.position = CGPoint(x: 0, y: 0)
        
        //changing scale of a sprite, by halving the size
//        myNode.xScale = 0.75
//        myNode.yScale = 0.75
        myNode.setScale(0.75)
        myNode.alpha = 0;
        //myNode.zRotation = 0.5
        
        //anchor point
//        myNode.anchorPoint = CGPoint(x: 0.2, y: 0.7)
        
        //MARK: - SKActions
        //rotate 2 radians over two secs - anchor point sets the rotation point
        //radian = a unit of angle = to an angle at the center of a circle whose arc is equal in length to the radius
//        let action = SKAction.rotate(byAngle: 2, duration: 3)

        //moving the sprite
        //let action = SKAction.move(to: CGPoint(x: 100, y: 100), duration: 2)
    
        //add the node, as a child, to the scene
        self.addChild(myNode)
        
        //fadein - totally circuituous, but I needed to test some things out
        func startAnimation(sprite: SKSpriteNode) {
            if !myNodeIsVisible {
                fadeSpriteIn(sprite: sprite)
            } else {
                fadeSpriteOut(sprite: sprite)
            }
        }
        
        func fadeSpriteIn(sprite: SKSpriteNode) {
            let action = SKAction.fadeIn(withDuration: 3)
            sprite.run(action)
        }

        func fadeSpriteOut(sprite: SKSpriteNode) {
            let action = SKAction.fadeOut(withDuration: 3)
            sprite.run(action)

        }
        
        startAnimation(sprite: myNode)
        
        
        //run the action once
        //myNode.run(action)
        
        //run the action indefinitely
        //myNode.run(SKAction.repeatForever(action))
        
       
        
     
    }
    
    //this function is called before every frame - we do things like move a sprite this way
    override func update(_ currentTime: TimeInterval) {
        //if 60FPS, update is called 60 times, 30fps, 30 times, etc.
        //our sprite will be moved
//        myNode.position.y += 1
    }
    
    
    
    
    //MARK: - Touch related functions
    
    //when we FIRST click or tap, this fires off
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

//        for touch in touches {
//            let location = touch.location(in: self) //locaiton in this scene
//
//            //example of checking whether or not the play button was pressed
//            if atPoint(location).name == "Play" {
//                //start the game
//            }
//
//            //adding an object to the place we click
//            let myNode1 = SKSpriteNode(imageNamed: "Frisk-0")
//            myNode1.position = location
//            myNode1.setScale(0.2)
//            self.addChild(myNode1)

        }
    
    
    //fires when we RELEASE our button or finger
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            let location = touch.location(in: self) //locaiton in this scene
//
//            //adding an object to the place we click
//            let myNode1 = SKSpriteNode(imageNamed: "Frisk-0")
//            myNode1.position = location
//            myNode1.setScale(0.2)
//            self.addChild(myNode1)
//
//        }
//    }
    
    //fires when we DRAG our button or finger
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            let location = touch.location(in: self) //locaiton in this scene
//
//            //adding an object to the place we click
//            let myNode1 = SKSpriteNode(imageNamed: "Frisk-0")
//            myNode1.position = location
//            myNode1.setScale(0.2)
//            self.addChild(myNode1)
//
//        }
//    }
    
    //when our touches are interrupted - phone call, etc.
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //do something like preserve the data
    }
    
    
    
}
