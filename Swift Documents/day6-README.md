## Day 6 :white_check_mark:
#### Creating basic closures
Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
```swift
// basic closures
let hello = {
    print("Hello, this is basic closure example.")
}

hello() // Hello, this is basic closure example.
```
#### Accepting parameters in a closure
```swift
let hello = { (name: String) in
    print("Hello\(name), how are u?")
}

hello("Şule")
```
#### Returning values from a closure
We want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:
```swift
let hello = { (name: String) -> String in
    return "I"Hello\(name), how are u?"
}

let message = hello("Şule")
print(message)
```
#### Closures as parameters
```swift
let exampleClos = { 
    print("I'm actually parameter")
}

func funcExample(clos: () -> Void) {
    print("What?")
    clos()
}

funcExample(clos: exampleClos)
```
#### Trailing closure syntax
```swift
// Remove this 
let exampleClos = { 
    print("I'm actually parameter")
}

func funcExample(clos: () -> Void) {
    print("What?")
    clos()
}

funcExample(){
  print("I'm actually parameter")
}

// This part cannot be used when there is more than one parameter.
funcExample{
  print("I'm parameter")
}
```
