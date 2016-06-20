//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 23
class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with \(sidesCount) sides."
    }
}

// 24
var shape = Shape()
shape.sidesCount = 7
var shapeDescription = shape.getInfo()

// 25
class NamedShape {
    var sidesCount: Int = 0
    var name: String{self.name = name}
    func getInfo() -> String { return "\(sidesCount) sides" }
}

var carre = NamedShape(name:"drapeau")

