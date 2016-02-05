//
//  Player.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name: String{
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String]{
            return _inventory
    }
    
    func addItemToInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int){
        self.init(startingHp: hp, attackPwr: attackPwr)
        _name = name
    }
}