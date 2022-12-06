//: [Previous](@previous)

import Foundation

// Functions with Default Values for Parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// Throwing errors on functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Checkpoint 4
enum SquareError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> Int {
    var match : Bool = false
    var matchRoot : Int = 0
    if number < 1 || number > 10_000 {
        throw SquareError.outOfBounds
    } else {
        for i in 1...10_000 {
            if i * i == number {
                match = true
                matchRoot = i
                break
            }
        }
        if match {
            return matchRoot
        } else {
            throw SquareError.noRoot
        }
    }
}

do {
    let result = try squareRoot(9)
    print("Square Root: \(result)")
} catch SquareError.outOfBounds {
    print("Number out of bounds")
} catch SquareError.noRoot {
    print("No root.")
}

