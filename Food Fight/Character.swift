//
//  Character.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/5/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Character {
    
    // Encapsulated variables
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    
    // Variable getters & setters
    var hp: Int {
        get {return self._hp}
    }
    var attackPwr: Int {
        get {return self._attackPwr}
    }
    
    
    // Initializers
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    init() {}
    
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
        
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
}