//: [Previous](@previous)

import Foundation

// Boolean
var isAuthenticated = false
isAuthenticated = !isAuthenticated
isAuthenticated.toggle()

// String Interpolation
let number = 13
let missionMessage = "Apollo \(number) landed on the moon."
print("5 x 5 is \(5 * 5)")


// Checkpoint
//Your goal is to write a Swift playground that:
//
//Creates a constant holding any temperature in Celsius.
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//Prints the result for the user, showing both the Celsius and Fahrenheit values.

let tempCelsius: Double = 88.5
let tempFahrenheit: Double = (( tempCelsius * 9 ) / 5) + 32

print("Celsius: \(tempCelsius), Fahrenheit: \(tempFahrenheit)")

//: [Next](@next)
