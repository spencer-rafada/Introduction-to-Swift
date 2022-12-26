//: [Previous](@previous)

import Foundation

// Closures

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

// Closures with Parameters
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayHello("Spencer"))

// Closures passed as parameters in functions
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// with closures it can be written this way
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// Closures short hand syntax
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// Accept Functions as parameters
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

func first() {
    print("First")
}
func second() {
    print("Second")
}
func third() {
    print("Third")
}

doImportantWork(first: first, second: second, third: third)
doImportantWork {
    first()
} second: {
    second()
} third: {
    third()
}

// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
luckyNumbers.filter {
    return !$0.isMultiple(of: 2)
} .sorted {
    return $0 < $1
} .map {
    print("\($0) is a lucky number")
}

luckyNumbers.filter { num in
    return !num.isMultiple(of: 2)
}.sorted { num1, num2 in
    return num1 < num2
}.map { num in
    print("\(num) is a lucky number.")
}
