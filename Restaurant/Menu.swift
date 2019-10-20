//
//  Menu.swift
//  Restaurant
//
//  Created by Guled Ali on 20/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation

struct MenueSection {
    
    var id: Int
    var food: String
    var drinks: String
    var sides: String
    var fooditems: [FoodItems]
    var drinkMenu: [DrinkMenu]
}

struct FoodItems {
    var id: Int
    var beefBurgers: String
    var chikenBurger: String
    var fries: String
    var salad: String
    var chikenTenders: String
}

struct DrinkMenu {
    var id: Int
    var coke: String
    var sprit: String
    var pepsi: String
    var orange: String
}

