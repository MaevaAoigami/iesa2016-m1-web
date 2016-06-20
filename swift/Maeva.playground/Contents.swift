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
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
}

var carre = NamedShape(name:"drapeau")

// 26
class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func getInfo() -> String {
        return "Square: L\(sideLength)."
    }
}

let s = Square(length: 5.2, name: "myS")
s.area()
s.getInfo()



// Accesseurs
class Person {
    var name: String
    init(name: String) { self.name = name }
    func getName() -> String { return "My name is \(name)" }
    func setName(name: String) { self.name = name }
}

var pName = Person(name: "Tata")
pName.getName()
pName.setName("Toto")
pName.getName()

//27
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func getInfo() -> String {
        return "Length=\(sideLength)"
    }
}

var triangle = EquilateralTriangle(length: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.perimeter)
print(triangle.sideLength)
