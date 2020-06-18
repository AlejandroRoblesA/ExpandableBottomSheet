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
    var ratting: String
    var price: Int
    var visited: Bool = false
    
    init(name: String, description: String, image: String, ratting: String, price: Int) {
        self.name = name
        self.image = image
        self.description = description
        self.ratting = ratting
        self.price = price
        self.visited = false
    }
    
    init() {
        self.init(name: "", description: "", image: "", ratting: "", price: 0)
    }
}

#if DEBUG
var courses: [Course] = [
    Course(name: "Objective C", description: """
    Objective-C es un lenguaje de programación orientado a objetos creado como un superconjunto de C para que implementase un modelo de objetos parecido al de Smalltalk. Originalmente fue creado por Brad Cox y la corporación StepStone en 1980. En 1988 fue adoptado como lenguaje de programación de NEXTSTEP y en 1992 fue liberado bajo licencia GPL para el compilador GCC. Actualmente se usa como un lenguaje principal de programación para Mac OS X, iOS y GNUstep, además de Swift.
    """, image: "c", ratting: "✬✬✬✬", price: 0),
    Course(name: "Swift 4", description: """
    Swift es un lenguaje de programación multiparadigma creado por Apple enfocado en el desarrollo de aplicaciones para iOS y macOS. Fue presentado en la WWDC 20147​ y está diseñado para integrarse con los Frameworks Cocoa y Cocoa Touch; puede usar cualquier biblioteca programada en Objective-C y llamar a funciones de C. También es posible desarrollar código en Swift compatible con Objective-C bajo ciertas condiciones. Swift tiene la intención de ser un lenguaje seguro, de desarrollo rápido y conciso. Usa el compilador LLVM incluido en Xcode 6. Fue presentado como un lenguaje propietario, pero en el año 2015, con la versión 2.2, pasó a ser de código abierto8​ con la Licencia Apache 2.0
    """, image: "4", ratting: "✬✬✬", price: 0),
    Course(name: "Swift 5", description: """
    Swift is a powerful and intuitive programming language for macOS, iOS, watchOS, tvOS and beyond. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love. Swift code is safe by design, yet also produces software that runs lightning-fast.
    """, image: "5", ratting: "✬✬✬✬", price: 0),
    Course(name: "SpriteKit", description: """
    The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games. With support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games
    """, image: "sk", ratting: "✬✬✬✬", price: 0),
    Course(name: "SwiftUI", description: """
    SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs. With a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.
    """, image: "ui", ratting: "✬✬✬✬✬", price: 0)
]
#endif
