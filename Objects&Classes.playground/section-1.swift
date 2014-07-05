// Experiments in The Swift Programming Language
//
// Objects and Classes

// Add a constant property with let, and add another method that takes an argument.
class Shape {
    var numberOfSides = 0
    let numberOfShape = 1
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func simpleFunc(number: Int) -> String {
        return "This is \(number)th side."
    }
}
// New an instance of class
var s = Shape()
// Use dot grammar to visit the properties and methods
s.numberOfShape
s.simpleFunc(2)

// A class with init
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// Make anthoer subclass of NamedShape called Circle “that takes a radius and a name as arguments to its initializer. 
// Implement an area and a describe method on the Circle class.”
class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    // Calculate the area of the Circle
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    // Override the function simpleDescription
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)"
    }
}

let c = Circle(radius: 3.2, name: "Test")

c.area()
c.simpleDescription()


