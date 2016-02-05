//
//  ViewController.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLal: UILabel!
    
    @IBOutlet weak var enemyHplbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    @IBOutlet weak var attackBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMsg: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        player = Player(name: "Crash1738", hp: 110, attackPwr: 15)
        
        generateRandomEnemy()

        playerHpLal.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(3))
        if rand == 0 {
            enemy = Kimara(startingHp: 100, attackPwr: 12)
        } else if rand == 1 {
            enemy = DevilWizard(startingHp: 120, attackPwr: 15)
        } else if rand == 2 {
            enemy = Enemy(startingHp: 50, attackPwr: 5)
        }
        enemyHplbl.text = "\(enemy.hp) HP"
        enemyImg.hidden = false
        attackBtn.hidden = false
    }

    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMsg
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
    }

    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr){
            printLbl.text = "攻擊成功，\(enemy.type)損失\(player.attackPwr) HP"
            enemyHplbl.text = "\(enemy.hp) HP"
        }else {
            printLbl.text = "\(enemy.type)迴避攻擊，攻擊失敗!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMsg = "\(player.name) 尋獲道具： \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive{
            enemyHplbl.text = ""
            printLbl.text = "消滅了 \(enemy.type)"
            enemyImg.hidden = true
            attackBtn.hidden = true
        }
        
    }
}

