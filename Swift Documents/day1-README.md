## Day 1 :white_check_mark:
### Variables
Variables are an essential component of practically all Swift programs because they let us store temporary data in our code.
```swift
var str = "Hello, playground"
var age = 38
var population = 8_000_000
```
If you want multi-line strings you need slightly different syntax: start and end with three double quote marks, like this:
```swift
var str1 = """
This goes
over multiple
lines
"""
```
“Double” is short for “double-precision floating-point number”, and it’s a fancy way of saying it holds fractional values such as 38.1, or 3.141592654.
```swift
var pi = 3.141
```
As for booleans, they are much simpler: they just hold either true or false, and Swift will automatically assign the boolean type to any variable assigned either true or false as its value.
```swift
var awesome = true
```
#### String Interpolation 
```swift
var score = 85
var str = "Your score was \(score)"
```
The playground output, that sets the str variable to be “Your score was 85”.
#### Constants
The let keyword creates constants, which are values that can be set once and never again. If you try to change that, Xcode will refuse to run your code. It’s a form of safety: when you use constants you can no longer change something by accident. For example:
```swift
let taylor = "swift"
```
#### Type annotations
```swift
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
```
#### Simple types
* You make variables using var and constants using let. It’s preferable to use constants as often as possible.
* Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
* Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
* String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
* Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
