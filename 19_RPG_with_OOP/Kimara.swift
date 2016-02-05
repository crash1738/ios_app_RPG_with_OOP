//
//  Kimara.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let immune_max = 15
    
    override var loot: [String]{
        return ["堅韌盾牌", "半獸人毒液", "狂暴斧頭（罕見道具）"]
    }
    
    override var type: String{
        return "狂暴半獸人"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= immune_max {
            return super.attemptAttack(attackPwr)
        } else{
            return false
        }
    }
}