//
//  Enemy.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String]{
        return ["生鏽的匕首","破損的圓盾"]
    }
    
    var type: String{
        return "半獸人步兵"
    }
    
    func dropLoot() -> String?{
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}