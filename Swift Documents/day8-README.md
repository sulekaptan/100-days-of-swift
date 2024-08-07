## Day 8 :white_check_mark:
#### Creating your own structs
Structs can be given their own variables and constants, and their own functions, then created and used however you want.
Let’s start with a simple example: we’re going to create a Sport struct that stores its name as a string. Variables inside structs are called properties, so this is a struct with one property:
```swift
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
```
#### Computed properties
```swift
struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)
```
#### Property observers
If you want to be notified when the value of a variable changes
```swift
struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
// You can also use willSet to take action before a property changes, but that is rarely used.
```
#### Methods
Functions inside structs are called methods, but they still use the same <b>func</b> keyword.
```swift
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()
```
#### Mutating methods
If a struct has a variable property but the instance of the struct was created as a constant, that property can’t be changed – the struct is constant, so all its properties are also constant regardless of how they were created.
```swift
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
// If we remove "mutating", We get an error like this. And a suggestion
// error: cannot assign to property: 'self' is immutable
// note: mark method 'mutating' to make 'self' mutable 
```
#### Properties and methods of strings
<b>String</b>s have lots more properties and methods.
```swift
let string = "Do or do not, there is no try." 

print(string.count) //the number of characters in a string

print(string.hasPrefix("Do")) //hat returns true if the string starts with specific letters

print(string.uppercased()) //uppercase a string by calling its uppercased() method

print(string.sorted()) //sort the letters of the string into an array
```
#### Properties and methods of arrays
```swift
var toys = ["Woody"]

print(toys.count) //number of items in an array

toys.append("Buzz") //to add a new item

toys.firstIndex(of: "Buzz") //locate any item inside an array
// That will return 1 because arrays count from 0.

print(toys.sorted()) //sort the items of the array alphabetically

toys.remove(at: 0) //remove an item
```













