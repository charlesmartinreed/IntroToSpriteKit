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
    
    let character = SKSpriteNode(imageNamed: "Frisk-0")
    
    override func didMove(to view: SKView) {
        //using the label using SKLabelNode
//        let label = SKLabelNode(fontNamed: "Helvetica Neue")
//        label.text = "Player's Score"
//        label.fontSize = 60
//        label.fontColor = SKColor.red
//        label.position = CGPoint(x: 0, y: 0)
        
        self.addChild(label)
   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
