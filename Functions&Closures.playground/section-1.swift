// Experiments in The Swift Programming Language
//
// Functions and Closures

// The origin function:
func greet1(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

greet1("Bob", "Tuesday")

// Remove the day parameter. Add a parameter to include today's lunch special in the greeting
func greet(name: String, special: Int) -> String {
    return "Hello, \(name), today's lunch is \(special)"
}

greet("Bobo", 100)

// Write a function that calculates the average of its arguments.
func averageOf(numbers: Int...) -> Int {
    var sum = 0, index = 0
    for number in numbers {
        sum += number
        index++
    }
    return index > 0 ? sum/index : 0
}

averageOf()
averageOf(1, 2, 3)

// Rewrite the closure to return zero for all odd numbers
var numbers = [1, 3, 4, 7, 9]
numbers.map({
    (number: Int) -> Int in
    return number%2 == 0 ? number : 0
    })
