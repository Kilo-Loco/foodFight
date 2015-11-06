//
//  Player.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/5/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import Foundation

class Player: Character {
    
    // Encapsulated variables
    private var _name: String = "Player"
    private var _inventory = [String]()
    
    // Getters & Setters
    var name: String {
        get {return self._name}
    }
    var inventory: [String] {
        get {return self._inventory}
    }
    
    // Initialization
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        self._name = name
    }
    
}