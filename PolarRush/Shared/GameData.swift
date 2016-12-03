//
//  GameData.swift
//  PolarRush
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit

let menuOptions: [String] = ["newGame", "levelSelect", "options"];

class GameData{
    
    var currentSelectedOption = 0;
    
    private init(){
        
    }
    
    static var gameData = GameData()
    
}
