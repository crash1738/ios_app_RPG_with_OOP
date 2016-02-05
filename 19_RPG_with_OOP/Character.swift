//
//  Character.swift
//  19_RPG_with_OOP
//
//  Created by 昆翰 蔡 on 2016/1/31.
//  Copyright © 2016年 昆翰 蔡. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr:Int{
        
        get{
            let rand = Int(arc4random_uniform(3))
            if rand == 0 {
                _attackPwr = 10
            } else if rand == 1 {
                _attackPwr = 20
            } else if rand == 2 {
                _attackPwr = 30
            }
            return _attackPwr
        }
    }
    
    var hp:Int{
        get{
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            }else{
                return true
            }
        }
    }
    
    init(startingHp:Int, attackPwr: Int){
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
    
    
    
    
}