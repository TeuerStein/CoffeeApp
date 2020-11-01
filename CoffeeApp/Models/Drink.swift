//
//  Drink.swift
//  CoffeeApp
//
//  Created by OLEKSANDR SOKOLOV on 30.10.2020.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case hot = "hot"
        case cold = "cold"
    }
}
