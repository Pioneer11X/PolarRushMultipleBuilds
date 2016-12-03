//
//  HomeScene.swift
//  PolarRush
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit

class HomeScene: GameScene{
    
    // If tvOS, detect button press.
    
    func remotePressed(){
        print("kpap")
    }
    
    #if os(tvOS) || os(iOS)
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        GameControl.gameControl.loadMenuScene()
    }
    
    #endif
    
    // If iOS, detect Tap.
    
    // If MacOs, detect Spacebar.
    #if os(macOS)
    
    override func keyDown(with event: NSEvent) {
        guard !event.isARepeat else { return }
        let keyCode: UInt16 = event.keyCode
        if keyCode == 49 {
            GameControl.gameControl.loadMenuScene()
        }
    }
    
    #endif
    
}
