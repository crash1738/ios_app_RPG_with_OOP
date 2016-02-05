//
//  DevilWizard.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    let immune_max = 21

    override var loot: [String]{
        return ["女巫魔杖","暗黑護身符", "鹹豬肉"]
    }
    
    override var type:String{
        return "荒野女巫"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= immune_max {
            return super.attemptAttack(attackPwr)
        } else{
            return false
        }
    }
}