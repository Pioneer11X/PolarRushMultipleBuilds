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
    
    func remotePressed(_ recognizer: UITapGestureRecognizer){
        print("kpap")
    }
    
    #if os(tvOS)
    
//    let tapRecogniser = UITapGestureRecognizer(target: self, action: #selector(remotePressed(_:)))
    //tapRecogniser.allowedPressTypes = [NSNumber(value: UIPressType.select.rawValue)];
        let tapRecogniser = UITapGestureRecognizer(target: self, action: #selector(remotePressed(_:)))
    
    #endif
    
    // If iOS, detect Tap.
    
    // If MacOs, detect Spacebar.
    #if os(macOS)
    
    override func keyDown(with event: NSEvent) {
        guard !event.isARepeat else { return }
        let keyCode: UInt16 = event.keyCode
        if keyCode == 49 {
            loadMenuScene()
        }
    }
    
    #endif
    
    
    func loadMenuScene(){
        
    }
    
}
