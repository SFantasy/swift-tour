// Experiment in The Swift Programming Language
//
// Control Flow

// Add an else clause that sets a  different greeting if optionalName is nil.
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Sorry, your name is nil"
}

// Try removing the default case. What error do you get?
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetabelComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is is a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

// Add another variable to keep track of which kind of numbers was the largest, as well as what that largest number was.
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1,4 ,9, 16, 25],
]

var largest = 0
var currentKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            currentKind = kind
        }
    }
}

currentKind
largest
