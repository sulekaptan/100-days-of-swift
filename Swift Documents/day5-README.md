## Day 5 :white_check_mark:
#### Writing functions
Functions let us re-use code, which means we can write a function to do something interesting then run that function from lots of places. Repeating code is generally a bad idea, and functions help us avoid doing that.
```swift
func hello( ){ 
  let message = "Hello Şule"
  print(message)
}
```
#### Accepting parameters
```swift
func square(number: Int) {
    print(number * number)
}
square(number: 8)
```
#### Returning values
Inside your function, you use the return keyword to send a value back if you have one.
```swift
func square(number: Int) -> Int {
    return number * number
}
```
#### Parameter labels
```swift
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")
```
#### Omitting parameter labels
You can get this same behavior in your own functions by using an underscore, _, for your external parameter name, like this:
```swift
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")
```
#### Default Parameters
```swift
// If you want the function to run even if no parameters are entered

func isOkay (_ okay: Bool = true) { // Use _ element
  if okay {
    print("It's okay")
  }else{
    print("It's not okay!")
  } 
}

isOkay() // It's okay
isOkay(false) // It's not okay!
// It worked without giving a parameter. When we give a parameter, the result has changed.
```
#### Variadic Functions
```swift
// If the number of parameters you will enter is not clear
func calculate(numbers: Int...) {
    var result = 0
    for number in numbers {
        result += number
    }
    print("Total of numbers : \(result)")
}

calculate(numbers:1,2,3,4,5,6,7,8) // Total of numbers : 46
// I can enter as many numbers as I want.
```
#### Writing Throwing Functions
```swift
// What we're doing here is to make it return an error when the "kick" string is entered into the parameter.
// These functions are important. Because they are often useful for debugging.

enum WrongString: Error {
    case kick
}

func checkString(_ input: String) throws -> Bool {
    if input == "Kick" {
        throw WrongString.kick
    }
    return true
}

do {
    try checkString("Anyone")
    print("Have a great time")
} catch {
    print("Get Out")
}

// Have a great time
```
#### Inout parameters
```swift
// If you want to change a variable as it is. So

var changeMe = 13
print(changeMe) // This output is 13. We know this.

func changeNum (_ num : inout Int){
  num = 13_000
}

changeNum(&changeMe) 
print(changeMe) // 13000

// We did not do any assignments. But we bound the variable to the function for a while.
```
#### Summary
* Functions let us re-use code without repeating ourselves.
* Functions can accept parameters – just tell Swift the type of each parameter.
* Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
* You can use different names for parameters externally and internally, or omit the external name entirely.
* Parameters can have default values, which helps you write less code when specific values are common.
* Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
* Functions can throw errors, but you must call them using try and handle errors using catch.
* You can use inout to change variables inside a function, but it’s usually better to return a new value.
