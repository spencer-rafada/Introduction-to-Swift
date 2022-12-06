//: [Previous](@previous)

import Foundation

// Loops

// For loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters hate"

for _ in 1...5 {
    lyric += " hate"
}

print(platforms[1...])

// While loop
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")

// Break and Continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// Checkpoint 3
for i in 1...100 {
    // can be written as i.isMultiple(of: 3) && i.isMultiple(of: 5)
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else {
        print(i)
    }
}
//: [Next](@next)
