//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var numbers : [Int] = []
// The second list
var sortedNumbers : [Int] = []

// Populate the array
//for _ in 1...10 {
//    numbers.append( random(between: 1, and: 50) )
//}
numbers.append(5)
numbers.append(6)
numbers.append(2)
numbers.append(7)
numbers.append(9)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Begin sorting the list
while numbers.count > 0 {
    
    // Assume first number in the list is highest
    var highestIndex = 0
    var highestValue = numbers[0]
    
    // Loop to find the current highest in the list
    for i in 0..<numbers.count {
        print("Index is \(i) and the value is \(numbers[i])")
        // Print the index and value, from first to last
        for i in stride(from: numbers.count - 1, through: 0, by: -1) {
            //    print("Index is \(i) and the value is \(numbers[i])")
        }
        
    }
    
    numbers.remove(at: numbers.count - 1) // remove number at the end of array
    numbers.append(numbers.count - 1)
}


// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")


