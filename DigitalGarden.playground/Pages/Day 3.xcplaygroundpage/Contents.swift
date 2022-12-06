//: [Previous](@previous)

import Foundation

// This is a dictionary
var partners = ["Spencer": "Hana"]
partners["Spencer"]

// Sets can't have duplicates
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

// enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

enum Month {
    case january, february, march
}

var month = Month.january
month = .february
month = .march

//: [Next](@next)
