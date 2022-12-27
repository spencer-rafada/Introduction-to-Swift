//: [Previous](@previous)

import Foundation

struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// TODO: Day 11 part 2
struct Car {
    private let model: String
    private let numberOfSeats: Int
    var currentGear = 0
    
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    mutating func changeGear(change: String) {
        if change == "up" {
            self.currentGear += 1
        }
        else if change == "down" {
            self.currentGear -= 1
        }
    }
}

var dodge = Car(model: "Caliber", numberOfSeats: 4)
print(dodge)
dodge.changeGear(change: "up")
print(dodge)
