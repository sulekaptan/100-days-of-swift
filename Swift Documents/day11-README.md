## Day 11 :white_check_mark:
#### Protocols
Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.
For example, we can write a function that accepts something with an id property, but we don’t care precisely what type of data is used. We’ll start by creating an Identifiable protocol, which will require all conforming types to have an id string that can be read (“get”) or written (“set”):
```swift
protocol Identifiable {
    var id: String { get set }
}
```
We can’t create instances of that protocol - it’s a description of what we want, rather than something we can create and use directly. But we can create a struct that conforms to it:
```swift
struct User: Identifiable {
    var id: String
}
```
Finally, we’ll write a displayID() function that accepts any Identifiable object:
```swift
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}
```
#### Protocol inheritance
One protocol can inherit from another in a process known as protocol inheritance. Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.
```swift
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// We can now create a single Employee protocol that brings them together in one protocol.
// We don’t need to add anything on top, so we’ll just write open and close braces:
protocol Employee: Payable, NeedsTraining, HasVacation { }
```
#### Extensions
```swift
// Extensions allow you to add features to an existing type.

extension Double {
    func multiply(times : Double) -> Double {
        return self * times
    }
}
let num1 = 5.0
print(num1.multiply(times: 5)) // 25
// We've added a multiplication feature to the Double type

// And we also added factorial calculation
extension Double {
    func factorial() -> Double {
        let number = self
        var result = 1.0
        for i in 1...Int(number){
            result *= Double(i)
        }
        return result
    }
}

print(num1.factorial()) // 120
```
#### Protocol extensions
```swift
// Let's explain again through hackingwithswift example
// Since sequences and series are collected under the collections protocol in swift,
// we can create a feature to be used for both by adding an extension to the collection protocol.

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])


extension Collection { // So we can use this plugin in both types
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

// Works well on both
pythons.summarize()
beatles.summarize()
```
#### Protocol-oriented programming
```swift
protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).") // Preparing the function for automatic id creation 
    }
}

struct User: Identifiable { // So look at this struct
    // It doesn't have such function but it has inheritance and that inheritance also has a plugin
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify() // So that the extension of that inheritance can be used in the objects of this structure.
```
#### Summary
* Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
* You can build protocols on top of other protocols, similar to classes.
*Extensions let you add methods and computed properties to specific types such as Int.
* Protocol extensions let you add methods and computed properties to protocols.
* Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.


























