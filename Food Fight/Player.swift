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
    
    func addToInventory(item: String) {
        self._inventory.append(item)
    }
    
    // Initialization
    convenience init(name: String, hp: Int, attackPwr: Int, type: String) {
        self.init(
            startingHp: hp,
            attackPwr: attackPwr,
            alliance: "Hero",
            type: type
        ) 
        self._name = name
    }
    
}