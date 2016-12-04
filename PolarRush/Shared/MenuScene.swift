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
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        #if os(tvOS)
            let tapgestureRec = UIGestureRecognizer(target: self, action: #selector(GameControl.gameControl.printPress))
            //            tapgestureRec.allowedPressTypes = [NSNumber.value(UIPressType.select.rawValue)]
            //            tapgestureRec.allowedPressTypes =
            tapgestureRec.allowedPressTypes = [ NSNumber(value: UIPressType.select.rawValue),
                                                NSNumber(value: UIPressType.playPause.rawValue),
            ]
            tapgestureRec.isEnabled = true
            tapgestureRec.allowedTouchTypes = [
                NSNumber(value: UIPressType.leftArrow.rawValue)
            ]
            //            print(UIPressType.select.rawValue)
            //            print(NSNumber(value: UIPressType.select.rawValue))
            self.view?.addGestureRecognizer(tapgestureRec)
        #endif
    }
    
    #if os(iOS)
        
    #endif
    
    #if os(tvOS) || os(macOS)
//        var currentSelected = GameData.gameData.menuOptions
        var currentSelected = 0
    
    #endif
    
    #if os(tvOS)
    
        let yCoords = [0,-160,-325]
    
        var initialLocation: CGPoint = CGPoint(x: 0, y: 0)
        var finalLocation: CGPoint = CGPoint(x: 0, y: 0)
        var diffY = 0
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if let touch = touches.first{
                initialLocation = touch.location(in: self)
            }
        }
    
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            if let touch = touches.first{
                finalLocation = touch.location(in: self)
                diffY = Int(finalLocation.y) - Int(initialLocation.y)
                
                if diffY < 0 {
                    if currentSelected < 2{
                        currentSelected += 1
                    }else {
                        currentSelected = 0
                    }
                } else if diffY > 0 {
                    if currentSelected > 0{
                        currentSelected -= 1
                    }else {
                        currentSelected = 2
                    }
                }
                
            }
        }
    
        override func update(_ currentTime: TimeInterval) {
            let grayNode = self.childNode(withName: "GrayBar")
            grayNode?.position = CGPoint(x: 0, y: yCoords[currentSelected])
        }
    
        // Swipe Down
    
        // Swipe Up
    
    
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
            // MARK: Here we should be calling the corresponding option
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
