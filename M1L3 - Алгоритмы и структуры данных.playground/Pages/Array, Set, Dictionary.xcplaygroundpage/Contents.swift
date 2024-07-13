//: [Previous](@previous)
//:
//: # Array, Set, Dictionary
//:
//: ## map, compactMap, flatMap
let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let mapped = numbers.map{ $0 * 10 }
print("mapped")
print(mapped)

let possibleNumbers = ["1", "2", "three", "4", ":)"]
let compactMapped = possibleNumbers.compactMap(Int.init)
print("compactMapped")
print(compactMapped)

let text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
"""
let wordsMapped = text.split(separator: "\n").map{ $0.split(separator: " ") }
print("wordsMapped")
print(wordsMapped)
let wordsFlatMapped = text.split(separator: "\n").flatMap{ $0.split(separator: " ") }
print("wordsFlatMapped")
print(wordsFlatMapped)

//: ## filter
let filtered = numbers.filter{$0 % 2 == 0}
print("filtered")
print(filtered)

//: ## reduce
//: Мы можем расчитать размер прокручиваемой области contentSize для UIScrollView на основании размеров его subviews
let sum = numbers.reduce(0, +)
print("sum")
print(sum)

//: Remove duplicates
let arrayInt = [1,1,2,6,6,7,2,9,7]
let noDuples = arrayInt.reduce(into: []) {
	!$0.contains($1) ? $0.append($1) : ()
}
print("noDuples")
print(noDuples)

//: ## Set
struct MyStruct { }
extension MyStruct: Hashable { }

let mySet: Set<MyStruct>

let optionalSet: Set<Int?> = [1, 2, nil, 4, 5, nil]
print("optionalSet")
print(optionalSet)

//: ## Dictionary
let myDictionary: [MyStruct: String]

var optionalDictionary: [Int: String?] = [ 0: nil, 1: "one", 2: "two"]
print(optionalDictionary)
optionalDictionary[2] = .some(nil)
print(optionalDictionary)

//: [Next](@next)
