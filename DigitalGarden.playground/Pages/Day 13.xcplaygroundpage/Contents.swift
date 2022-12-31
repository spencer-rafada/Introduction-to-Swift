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


// TODO: Continue Opaque Return Types


//: [Next](@next)
