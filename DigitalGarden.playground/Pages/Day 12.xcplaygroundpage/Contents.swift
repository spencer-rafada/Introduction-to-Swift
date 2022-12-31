//: [Previous](@previous)

import Foundation

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// Inheritance
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    // Override: keyword used to change an inherited method
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

// Final: keyword used to define that the class cannot be inherited from.
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// Initializers
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// Copying a Class
//class User {
//    var username = "Anonymous"
//}

// Can safely copy a class without having to worry about the changes being changed for all instances
//class User {
//    var username = "Anonymous"
//
//    func copy() -> User {
//        let user = User()
//        user.username = username
//        return user
//    }
//}
//
//var user1 = User()
//var user2 = user1
//user2.username = "Taylor"
//
//print(user1.username)
//print(user2.username)

// Deinitializers
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// Checkpoint 7
class Animal {
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

// Subclasses of Animal
class Dog: Animal {
    func speak() {
        print("Woof Woof!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("Meow!")
    }
}

// Subclasses of Dog
final class Corgi: Dog {
    override func speak() {
        print("Bark Bark!")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Aww Aww!")
    }
}

// Subclasses of Cat
final class Persian: Cat {
    override func speak() {
        print("Nyaw!")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Yeeaaaww!")
    }
}
//: [Next](@next)
