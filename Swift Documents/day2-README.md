## Day 2 :white_check_mark:
#### Arrays 
Arrays are collections of values that are stored as a single value. 
For example, John, Paul, George, and Ringo are names, but arrays let you group them in a single value called The Beatles.
```swift
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
```
You can read values from an array by writing a number inside brackets. Array positions count from 0, so if you want to read “Paul McCartney” you would write this:
```swift
beatles[1]
```
Be careful: Swift crashes if you read an item that doesn’t exist. For example, trying to read beatles[9] is a bad idea.
Note: If you’re using type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool].
#### Sets
Sets are collections of values just like arrays, except they have two differences:
* Items aren’t stored in any order; they are stored in what is effectively a random order.
* No item can appear twice in a set; all items must be unique.
* If you try to insert a duplicate item into a set, the duplicates get ignored. 
You can create sets directly from arrays, like this:
```swift
let colors = Set(["red", "green", "blue"])
```
#### Tuples
Tuples allow you to store several values together in a single value. 
```swift
var name = (first: "Şule", last: "Kaptan")
name.0 //Şule
name.first //Şule
```
#### Dictionaries
Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
```swift
let heights = [
    "Şule Kaptan": 1.65,
    "Şevval Arslan": 1.50
]
heights["Rabia Özkan", default: "Unknown"]
```
#### Empty collection
```swift
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results = Array<Int>()
```




#### Enumerations

```swift
let result = "failure"
// But what happens if someone accidentally uses different naming?
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure
```
#### Enum associated values
```swift
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
```
#### Enum raw values
```swift
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)
```
#### Complex types
* Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
* Arrays store items in the order you add them, and you access them using numerical positions.
* Sets store items without any order, so you can’t access them using numerical positions.
* Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
* Dictionaries store items according to a key, and you can read items using those keys.
* Enums are a way of grouping related values so you can use them without spelling mistakes.
* You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
