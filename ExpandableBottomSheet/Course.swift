//
//  Course.swift
//  ExpandableBottomSheet
//
//  Created by Omar Alejandro Robles Altamirano on 17/06/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import Foundation

struct Course: Identifiable{
    var id: UUID = UUID()
    var name: String
    var description: String
    var image: String
    var type: String
    var price: Int
    var visited: Bool = false
    
    init(name: String, description: String, image: String, type: String, price: Int) {
        self.name = name
        self.image = image
        self.description = description
        self.type = type
        self.price = price
        self.visited = false
    }
    
    init() {
        self.init(name: "", description: "", image: "", type: "", price: 0)
    }
}

#if DEBUG
var courses: [Course] = [
    Course(name: "Objective C", description: "", image: "c", type: "", price: 0),
    Course(name: "Swift 4", description: "", image: "4", type: "", price: 0),
    Course(name: "Swift 5", description: "", image: "5", type: "", price: 0),
    Course(name: "SpriteKit", description: "", image: "sk", type: "", price: 0),
    Course(name: "SwiftUI", description: "", image: "ui", type: "", price: 0)
]
#endif
