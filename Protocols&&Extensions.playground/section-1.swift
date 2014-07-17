// Experiments in Swift Programming Language
//
// Protocols and Extensions
//

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// Write an enumeration that conforms the protocol
enum SimpleEnum: ExampleProtocol {
    case a, b
    var simpleDescription: String{
        get {
            return self.getDescription()
        }
    }
    
    func getDescription() -> String {
        switch self {
        case .a: return "it is a"
        case .b: return "it is b"
        }
    }
    
    mutating func adjust() {
        self = SimpleEnum.b
    }
}

var c = SimpleEnum.a
c.simpleDescription
c.adjust()
c.simpleDescription

// Write an extension for Double type that adds an absoluteValue property.
extension Double {
    var absoluteValue: Double {
        return abs(self)
    }
}

7.3.absoluteValue
(-7.0).absoluteValue

