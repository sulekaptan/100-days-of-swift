## Day 9 :white_check_mark:
#### Initializers
Initializers are like assigning a default value to the desired variable.
```swift
struct User {
    var username: String
}
var user = User(username: "twostraws")
//We can provide our own initializer to replace the default one.
//For example, we might want to create all new users as “Anonymous” and print a message, like this:

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
```
#### Referring to the current instance
```swift
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
```
#### Lazy properties
But what if we didn’t always need the family tree for a particular person? If we add the <b>lazy</b> keyword to the familyTree property, 
then Swift will only create the FamilyTree struct when it’s first accessed:
```swift
struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

lazy var familyTree = FamilyTree()
```
#### Static properties and methods
```swift
// Imagine if we actually built a car factory

struct Car {
    static var carCount = 0
    var power : String
    
    init (power:String){
        self.power = power
        Car.carCount += 1
    }
}

var myCar = Car(power: "542 KW")
var anotherCar = Car(power: "140 KW")

print(Car.carCount) // 2
// we now have a number that counts vehicles
```
#### Access control
```swift
// If we don't want the variable to be accessed

struct PrivAcc{
    var name : String
    private var posts : Int
    
    init(name : String){
        self.name = name
        self.posts = 5
    }
}

var myPrivAcc = PrivAcc(name: "Mehmet")
myPrivAcc.posts // Xcode warns us : 'posts' is inaccessible due to 'private' protection lev
```
```swift
struct PrivAcc{
    var name : String
    private var posts : Int // Now the "posts" variable can only be read within this structure.
    
    init(name : String){
        self.name = name
        self.posts = 5
    }
    
    func readPosts (){
        print("Your post count is : \(self.posts)")
    }
}

var myPrivAcc = PrivAcc(name: "Mehmet")
myPrivAcc.readPosts() // Your post count is : 5
```
### Summary
* You can create your own types using structures, which can have their own properties and methods.
* You can use stored properties or use computed properties to calculate values on the fly.
* If you want to change a property inside a method, you must mark it as mutating.
* Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
* Use the self constant to refer to the current instance of a struct inside a method.
* The lazy keyword tells Swift to create properties only when they are first used.
* You can share properties and methods across all instances of a struct using the static keyword.
* Access control lets you restrict what code can use properties and methods.





