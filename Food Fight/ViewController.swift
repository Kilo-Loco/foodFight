//
//  ViewController.swift
//  Food Fight
//
//  Created by Kyle Lee on 11/4/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var printLabel: UILabel!
    @IBOutlet var playerHpLabel: UILabel!
    @IBOutlet var enemyHpLabel: UILabel!
    @IBOutlet var treasureStarImage: UIButton!
    @IBOutlet var orangeImage: UIImageView!
    @IBOutlet var attackImage: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var lootMessage: String?
    
    func generateEnemy() {
        let rand: Int = Int(arc4random_uniform(2))
        
        if rand == 0 {
            self.enemy = Fruit(hp: 70, attackPwr: 10)
        } else {
            self.enemy = Vegetable(hp: 45, attackPwr: 30)
        }
        self.printLabel.text = "An enemy \(enemy.type) has appeared!"
        self.enemyHpLabel.text = "\(enemy.hp) HP"
        self.orangeImage.hidden = false
        self.attackImage.enabled = true
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.player = Player(name: "Kilo Loco", hp: 110, attackPwr: 20, type: "Meat")
        self.playerHpLabel.text = "\(self.player.hp) HP"
        self.generateEnemy()
    }

    @IBAction func attackButton(sender: AnyObject) {
        if self.enemy.attemptAttack(self.player.attackPwr){
            self.printLabel.text = "Attacked \(self.enemy.type) for \(self.player.attackPwr) HP!"
            self.enemyHpLabel.text = "\(enemy.hp) HP"
        } else {
            self.printLabel.text = "Attack was unsuccessful!"
        }
        
        if !self.enemy.isAlive {
            self.enemyHpLabel.text = ""
            self.orangeImage.hidden = true
            self.printLabel.text = "\(player.name) killed \(enemy.type)!"
        }
        
        if let loot: String = self.enemy.dropLoot(){
            self.lootMessage = "\(self.player.name) found \(loot)"
            self.player.addToInventory(loot)
            self.treasureStarImage.hidden = false
        }
        
        
    }
    
    @IBAction func treasureStarButton(sender: AnyObject) {
        self.treasureStarImage.hidden = true
        self.printLabel.text = self.lootMessage
        self.attackImage.enabled = false
        NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "generateEnemy", userInfo: nil, repeats: false)
    }
    
    

}

