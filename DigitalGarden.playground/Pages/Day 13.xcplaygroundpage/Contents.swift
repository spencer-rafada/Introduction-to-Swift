//: [Previous](@previous)

import Foundation

// Protocols and Extensions
protocol Vehicle {
    var name: String { get } // Readable
    var currentPassengers: Int { get set } // Readable-Writable
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// Car : (conforms) to Vehicle. Not Car : (inherits) from Vehicle
struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

let car = Car()
commute(distance: 100, using: car)

// Another power of protocol
func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

// You can pass either class, struct, or enums on a function as long as they conform on the same protocol.
getTravelEstimates(using: [car, bike], distance: 150)


// Extensions
var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimmed2 = quote.trimmed()

// Protocol Extensions
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

// Now you don't have to declare sayHello unless you want to
extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

// Checkpoint 8
protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var name: String {get set}
    
    func printSales()
}

extension Building {
    func printSales(){
        print("It has \(rooms). It costs \(cost). It is managed by \(name)")
    }
}

struct School: Building {
    var rooms: Int
    var cost: Int
    var name: String
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSales() {
        print("The house has \(rooms). It costs \(cost). It is managed by \(name)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSales() {
        print("The office has \(rooms). It costs \(cost). It is managed by \(name)")
    }
}

let office = Office(rooms: 3, cost: 300000, name: "GSAMN")
office.printSales()
let school = School(rooms: 120, cost: 1000000, name: "ECC")
school.printSales()

//: [Next](@next)
