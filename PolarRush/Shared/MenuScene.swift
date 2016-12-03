//
//  MenuScene.swift
//  PolarRush
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit

class MenuScene: GameScene{
    
    #if os(iOS)
        
    #endif
    
    #if os(tvOS) || os(macOS)
//        var currentSelected = GameData.gameData.menuOptions
        var currentSelected = 0
    
    #endif
    
    #if os(macOS)
    let yCoords = [0,-135,-275]
    
    override func keyDown(with event: NSEvent) {
        guard !event.isARepeat else { return }
        let keyCode: UInt16 = event.keyCode
        if keyCode == 1 {
            if currentSelected < 2{
                currentSelected += 1
            }else{
                currentSelected = 0
            }
        } else if keyCode == 49{
            print("The following button pressed: \(menuOptions[currentSelected])")
        } else if keyCode == 13{
            if currentSelected > 0{
                currentSelected -= 1
            }else{
                currentSelected = 2
            }
        } else {
            print(keyCode)
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        let grayNode = self.childNode(withName: "GrayBar")
        grayNode?.position = CGPoint(x: 0, y: yCoords[currentSelected])
    }
    
    #endif
    
}
