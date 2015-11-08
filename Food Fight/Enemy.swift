//
//  Enemy.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/5/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    private var _loot: [String] = ["Cooking Oil", "Seasoning Salt"]
    
    // Initialization
    convenience init(hp: Int, attackPwr: Int, type: String) {
        self.init(
            startingHp: hp,
            attackPwr: attackPwr,
            alliance: "Villian",
            type: type
        )
    }
    
    // Loot Logic
    var loot: [String] {
        get{ return self._loot }
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let randomDrop = Int(arc4random_uniform(UInt32(loot.count)))
            return self.loot[randomDrop]
        } else {
            return nil
        }
    }

}