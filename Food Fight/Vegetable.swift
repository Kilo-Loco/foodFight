//
//  Vegetable.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/7/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Vegetable: Enemy {
    
    // Initialization
    convenience init(hp: Int, attackPwr: Int) {
        self.init(
            hp: hp,
            attackPwr: attackPwr,
            type: "Vegetable"
        )
    }
    
    // Loot Logic
    var uniqueLoot: [String] = ["Thick Root", "Nasty Taste", "Leafy Debris"]
    
    // Unique Ability
    
    
}