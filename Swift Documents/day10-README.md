## Day 10 :white_check_mark:
#### Creating your own classes
```swift
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
```
#### Class inheritance
```swift
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog {
  //It will inherit the same properties and initializer as Dog by default
}

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
```
#### Overriding methods
```swift
class Developer {
    func startLearn(){
        print("Learn any lang")
    }
}
class AppleDev : Developer{
}

let paul = AppleDev()
paul.startLearn() // Learn any lang
class AppleDev : Developer{
    override func startLearn() {
        print("Learn Swift")
    }
}
let paul = AppleDev()
paul.startLearn() // Learn Swift
```
#### Final classes
Swift gives us a <b>final</b> keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.
To make a class final just put the final keyword before it, like this:
```swift
final class Dog { // Creates a class that no class can inherit.
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
```
#### Copying objects
```swift
// Objects are connected to each other. Even if we did it over a copy, its name was changed.
class Car {
    var carType = "Normal"
}

var sportCar = Car()
print(sportCar.carType) // "Normal"

var copyCar = sportCar
copyCar.carType = "Sport"

print(sportCar.carType) // "Sport"
```
```swift
// What if this was a struct. No change because the duplicate object is independent of the other
struct Car {
    var carType = "Normal"
}

var sportCar = Car()
print(sportCar.carType) // "Normal"

var copyCar = sportCar
copyCar.carType = "Sport"

print(sportCar.carType) // "Normal"
print(copyCar.carType) // "Sport"
```
#### Deinitializers
```swift
class Product{
    var name = "Build"
    
    init(){
        print("\(name) can be used.")
    }
    
    func everythingGood(){
        print("Everything is ok for \(name)")
    }
    
    deinit{
        print("\(name) was destroyed")
    }
}

for _ in 0...1{
    let home = Product()
    home.everythingGood()
}

// Build can be used.
// Everything is ok for Build
// Build was destroyed
// Build can be used.
// Everything is ok for Build
// Build was destroyed
```
#### Mutability
The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
```swift
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

// If you want to stop that from happening you need to make the property constant:
class Singer {
    let name = "Taylor Swift"
}
```
#### Summary
* Classes and structs are similar, in that they can both let you create your own types with properties and methods.
* One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
* You can mark a class with the final keyword, which stops other classes from inheriting from it.
* Method overriding lets a child class replace a method in its parent class with a new implementation.
* When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
* Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
* Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.















