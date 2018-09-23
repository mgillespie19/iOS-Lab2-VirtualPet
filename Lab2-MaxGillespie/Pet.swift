//
//  pet.swift
//  Lab2-MaxGillespie
//
//  Created by Max Gillespie on 9/22/18.
//  Copyright © 2018 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class Pet {
    var happiness: Int
    var foodLevel: Int
    var type: Animal
    var image: UIImage
    var background: UIColor
    
    enum Animal {
        case dog
        case cat
        case bird
        case bunny
        case fish
    }
    
    // Functions
    func play() {
        if (foodLevel > 0 && happiness < 10) {
            happiness += 1
            foodLevel -= 1
        }
    }
    func feed() {
        if (foodLevel < 10) {
            foodLevel += 1
        }
    }
    
    // Init
    init(h:Int = 0, f:Int = 0, type:Animal = .dog) {
        self.happiness = h
        self.foodLevel = f
        self.type = type
        
        switch type {
        case .dog:
            image = UIImage(named: "Dog")!
            background = UIColor(red: 1, green: 0.46, blue: 0.46, alpha: 1)
        case .cat:
            image = UIImage(named: "Cat")!
            background = UIColor(red: 0.57, green: 0.76, blue: 1, alpha: 1)
        case .bird:
            image = UIImage(named: "Bird")!
            background = UIColor(red: 1, green: 1, blue: 0.65, alpha: 1)
        case .bunny:
            image = UIImage(named: "Bunny")!
            background = UIColor(red: 0.58, green: 1, blue: 0.79, alpha: 1)
        case .fish:
            image = UIImage(named: "Fish")!
            background = UIColor(red: 0.99, green: 0.77, blue: 1, alpha: 1)
        }
    }
}
