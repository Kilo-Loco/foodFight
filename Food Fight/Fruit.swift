//
//  Fruits.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/5/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Fruit: Enemy {
    
    // Initalization
    override var type: String {
        return "Fruit"
    }
    
    // Loot Logic
    override var loot: [String] {
        return ["Golden Seeds", "Sweet Juice", "Nutritious Core"]
    }
    
    // Unique Abilities
    let immunity = 15
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr > self.immunity {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    

    
}