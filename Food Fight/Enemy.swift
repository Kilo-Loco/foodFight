//
//  Enemy.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/5/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Cooking Oil", "Seasoning Salt"]
    }
    
    var type: String {
        return "Scraps"
    }
}