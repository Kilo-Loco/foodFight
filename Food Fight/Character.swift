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
    private var _alliance: String = "Mercenary"
    private var _type: String = "Spoiled Food"
    
    // Variable getters & setters
    var hp: Int {
        get { return self._hp }
    }
    var attackPwr: Int {
        get { return self._attackPwr }
    }
    var alliance: String {
        get { return self._alliance }
    }
    var type: String {
        get { return self._type }
    }
    
    
    // Initializers
    init(startingHp: Int, attackPwr: Int, alliance: String, type: String) {
        self._hp = startingHp
        self._attackPwr = attackPwr
        self._alliance = alliance
        self._type = type
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