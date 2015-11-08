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
    convenience init(hp: Int, attackPwr: Int) {
        self.init(
            hp: hp,
            attackPwr: attackPwr,
            type: "Fruit"
        )
    }

    // Loot Logic
    var uniqueLoot = ["Golden Seeds", "Sweet Juice", "Nutritious Core"]

    override func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(super.loot.count + self.uniqueLoot.count)))
            let combinedLoot: [String] = super.loot + self.uniqueLoot
            return combinedLoot[rand]
        } else {
            return nil
        }
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