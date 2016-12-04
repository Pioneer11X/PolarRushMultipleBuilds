//
//  GameControl.swift
//  PolarRush
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit


// This file containts all the Main Control for this project.
class GameControl{
    
    var currentView: SKView?
    var gameController: GameViewController?
    
    private init(){
        // Nada
    }
    
    static var gameControl = GameControl()
    
    @objc func printPress(){
        print("press")
    }
    
    func loadHomeScene() -> HomeScene{
        // Check which device it is.
        
        #if os(iOS)
            guard let scene = HomeScene(fileNamed: "HomeScene_iOS") else{
                print("Unable to load")
                abort()
            }
        #endif
        
        #if os(tvOS)
            guard let scene = HomeScene(fileNamed: "HomeScene_tvOS") else {
                
                print("Unable to load")
                abort()
            }
        #endif
        
        #if os(macOS)
            guard let scene = HomeScene(fileNamed: "HomeScene_MacOS") else {
                print("Unable to load")
                abort()
            }
        #endif
        
        return scene
    }
    
    func loadMenuScene(){
        
        #if os(iOS)
            guard let scene = MenuScene(fileNamed: "MenuScene_iOS") else {
                print("Unable to load MenuScene")
                abort()
            }
            let skView = GameControl.gameControl.gameController?.view as! SKView
            skView.presentScene(scene)
        #endif
        
        #if os(tvOS)
            guard let scene = MenuScene(fileNamed: "MenuScene_tvOS") else {
                print("Unable to load MenuScene")
                abort()
            }
            let skView = GameControl.gameControl.gameController?.view as! SKView
            skView.presentScene(scene)
        #endif
        
        #if os(macOS)
            guard let scene = MenuScene(fileNamed: "MenuScene_macOS") else {
                print("Unable to load MenuScene")
                abort()
            }
            
            let skView = GameControl.gameControl.gameController?.view as! SKView
            skView.presentScene(scene)
        #endif
        
    }
    
}
