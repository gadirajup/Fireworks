//
//  GameScene.swift
//  Fireworks
//
//  Created by Prudhvi Gadiraju on 4/28/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameTimer: Timer!
    
    let leftEdge = -22
    let bottomEdge = -22
    let rightEdge = 1024 + 22
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.blendMode = .replace
        background.position = CGPoint(x: 512, y: 384)
        background.zPosition = -1
        addChild(background)
        
        gameTimer = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(launchFireworks), userInfo: nil, repeats: true)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
    
    @objc func launchFireworks() {
        
    }
    
    func createFirework(xMovement: CGFloat, x: Int, y: Int) {
        let node = SKNode()
        node.position = CGPoint(x: x, y: y)
        
        let firework = SKSpriteNode(imageNamed: "rocket")
        firework.colorBlendFactor = 1
        firework.name = "firework"
        node.addChild(firework)
        
        switch Int.random(in: 0...2) {
        case 0:
            firework.color = .cyan
        case 1:
            firework.color = .green
        case 2:
            firework.color = .red
        default:
            firework.color = .yellow
        }
    }
}
