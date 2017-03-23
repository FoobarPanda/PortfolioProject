//
//  Monster.swift
//  Darwins Monster Encyclopaedia
//
//  Created by Jessica Foo on 14/3/17.
//  Copyright © 2017 Jessica Foo. All rights reserved.
//

import UIKit

class Monster: NSObject {
    var name: String?
    var age: Int?
    var species: String?
    var power:Int?
    var health: Int?
    
    override init()
    {
        self.name = "Unknown"
        self.age = 0
        self.species = "Unknown"
        self.power = 0
        self.health = 0
    }
    
    init(name: String, age: Int, species: String, power: Int, health: Int)
    {
        self.name = name
        self.age = age
        self.species = species
        self.power = power
        self.health = health
    }
    
    func saveMessage()->String{
        return "Monster \(name!) has been created!"
    }
    
    func updateMessage()->String{
        return "Monster \(name!) has been updated!"
    }

}
