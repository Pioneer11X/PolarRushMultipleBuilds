//
//  GameViewController.swift
//  macOS
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class GameViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let scene = GameScene.loadHomeScene()
        let scene = GameControl.gameControl.loadHomeScene()
        
        // Present the scene
        let skView = self.view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        
        skView.showsFPS = true
        skView.showsNodeCount = true
    }

}

