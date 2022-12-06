//: [Previous](@previous)

import Foundation

// Functions
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// with returns
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)


// return multiple values with functions
//func getUser() -> [String: String] {
//    [
//        "firstName": "Taylor",
//        "lastName": "Swift"
//    ]
//}
//
//let user = getUser()
//print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

// using tuples
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// Custom parameters
func printHello(to name: String) {
    print("Hello \(name)")
}

printHello(to: "Spencer")
//: [Next](@next)
