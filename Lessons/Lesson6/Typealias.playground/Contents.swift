//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

let isPrimeClosure:(Int) -> Bool = { text in
    return true
}

let simpleClosure:(String) -> (String) = { name in
    let greeting = "Hello, World! " + "Program"
    return greeting
}

let result = simpleClosure("Hello, World")
print("----- Result -----")
print(result)
print("----- Result END -----")

let inputString = "12, a, 241, 39, 2d1, 100500100800, a 2, 0, -213, 4023, 39, 1, 3, 12345678990, 1004003, 9'000, 1300, 30k, 24k, 10M, 342384592M"

print("----- InputString -----")
print(inputString)
print("----- InputString END -----")

inputString
    //.flatMap
    //.compactMap
    //.filter
    //.reduce
    //.map


