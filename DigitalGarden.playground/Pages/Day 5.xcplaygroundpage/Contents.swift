//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let ourName = "Spencer Rafada"
let fianceeName = "Hana Ko"

if ourName < fianceeName {
    print("It's \(ourName) vs \(fianceeName)")
}

if ourName > fianceeName {
    print("It's \(fianceeName) vs \(ourName)")
}

let temp = 25

if temp > 20  && temp < 30{
    print("It's a nice day.")
}

// Ternary Operator
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")
