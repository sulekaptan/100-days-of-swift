## Day 12 :white_check_mark:
### Optionals
#### Handling missing data
```swift
// Here, we added a question mark to the end of our data type and
// said that this value may be empty in our data.

var age : Int? = nil
age = 20
// And then be able to fill that value
```
#### Unwrapping optionals
A common way of unwrapping optionals is with if let syntax, which unwraps with a condition. If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.
```swift
var name : String? = nil

if let unwrapped = name{
    print(unwrapped.count)
}else{
    print("Name is not found") // This line works
}
```
```swift
var name : String? = nil
name = "Şule" // But if the value is assigned

if let unwrapped = name{
    print(unwrapped.count) // This line works and the result is 4
}else{
    print("Name is not found")
}
```
#### Unwrapping with guard
```swift
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!") // In this code, only this place is executed 
        // and the following code is not executed.
        return
    }
    
    print("Hello, \(unwrapped)!") // This line only works if the value is full
}
let name : String? = nil
greet(name)
```
```swift
// But in "if let" 
func greet2(_ name: String?) {
    if let unwrapped = name {
        print("Hello, \(unwrapped)!")
    }else{
        print("No name")
    }  
    print("Heeyyyy") // This line of code is always executed
}
let name : String? = nil
greet2(name)
```
#### Force unwrapping
```swift
// If you are sure your code is not empty

let age = "20" // For example like here
let calcAge = Int(age)! // You can force this action

// But if this operation fails, the application will crash.
// Therefore, operations should only be forced on values we are sure of.
```

#### Implicitly unwrapped optionals
```swift
// You can think of it as forcing a value unwrapping
// But it does this without using "if let" or "guard let"

var age : Int! = nil // They can take a null value but you need to make sure they will get a value before using it.
// Because your code will crash if the value is empty when you use
```
#### Nil coalescing
```swift
// If id is not found here an empty value will be returned
func username(for id: Int) -> String? {
    if id == 1 {
        return "Tate Mcrae"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous" // And Here, if the value is empty, we want it to be written as anonymous.
// So our user's type is now a non-optional string
```

#### Optional chaining
```swift
// The main purpose here is to make sure that the variable I will use is not empty.
var names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() // So this line works fine

names.removeAll() // But if we removed all items in this array
let beatle2 = names.first?.uppercased() // This line will return nil
```

#### Optional try
```swift
// We've seen these codes before
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
```
```swift
// Now let's see how to use it as optional
if let result = try? checkPassword("password") { // Here if the operation is an error the result will be nil and the "else" part will work
    print("Result was \(result)")
} else {
    print("D'oh.")
}
```
```swift
// Also, if we're sure 
try! checkPassword("Top Secret") // It can be forced
print("OK!")
// But if the error is received your code will crash.
```

#### Failable initializers
```swift
// If you need an object with certain properties like an ID number
struct Person {
    var id: String

    init?(id: String) { // Failed initializers are for you
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
```

#### Typecasting
```swift
// Consider classes that inherit from a class
class Animal { }
class Fish: Animal { }

class Dog: Animal { // And only one of these classes has a unique function
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()] // This created array contains animal elements

// Since fish can't make a sound, we want dogs to make sounds.
for pet in pets {
    if let dog = pet as? Dog { // So only dog breeds have sound making function
        dog.makeNoise()
    }
}
```
#### Summary
* Optionals let us represent the absence of a value in a clear and unambiguous way.
* Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
* You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
* Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
* You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
* Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
* You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
* If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
* You can use typecasting to convert one type of object to another.
