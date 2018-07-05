import UIKit

/* Polymorphism is accessing the same parent method from two different child classes and
   implementing it differently. */

class Shape {
    var area: Double?

    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB)/2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}
