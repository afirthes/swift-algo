//: [Previous](@previous)

import Foundation

// Задача: выяснить что в строке не повторяются символы, учитывать регистр.

var greeting = "Hello, playground"

func testStringContainsOnlyUniqueChars(_ greeting: String) -> Bool {
    var symbols = Set<Character>()
    for c in greeting {
        if !symbols.insert(c).inserted { return false }
    }
    return true;
}


// false
print(testStringContainsOnlyUniqueChars("Hello, playground"))

// true
print(testStringContainsOnlyUniqueChars("aAbBcCdght"))
//: [Next](@next)
