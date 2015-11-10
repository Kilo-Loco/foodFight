//
//  OutrageousOrange.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/6/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class OutrageousOrange: Fruit {
    
    // Loot Logic
    var orangeLoot: [String] = ["Orange Peel", "Vitamin C", "Orange Pulp"]
    
    override func dropLoot() -> String? {
        if let droppedLoot = super.dropLoot() {
            self.orangeLoot.append(droppedLoot)
            let randOrangeLootNumber = Int(arc4random_uniform(UInt32(self.orangeLoot.count)))
            return self.orangeLoot[randOrangeLootNumber]
        } else {
            return nil
        }
    }
}