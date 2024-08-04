## Day 3 :white_check_mark:
#### Arithmetic operators
```swift
let firstNumber = 11
let secondNumber = 5

let total = firstNumber + secondNumber 
let difference = firstNumber - secondNumber
let multiply = firstNumber * secondNumber
let division = firstNumber / secondNumber
let remainder = firstNumber % secondNumber

print(total) // 16
print(difference) // 6
print(multiply) // 55
print(division) // 2
print(remainder) // 1
```
#### Operator overloading
Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with.
But + also joins strings, like this:
```swift
let name = "Şule"
let fullName = name + "Kaptan"
```
You can even use + to join arrays, like this:
```swift
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
```
#### Comparison operators
| Equal | Not Equal | Bigger | Less | Bigger or Equal | Less or Equal |
|-|-|-|-|-|-|
|==|!=|<|>|<=|>=|

#### Conditions
You give Swift a condition, and if that condition is true it will run code of your choosing.
```swift
let examScore = 41

if examScore < 45 {
    print("Failure (DD)")
} else if 45 <= examScore <= 70 {
    print("Success (CC)")
} else{
    print("Success (A)")
}
```
#### Combining conditions
Swift has two special operators that let us combine conditions together: they are && (and) and || (or).
```swift
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}
```
#### The ternary operator
```swift
let firstNum = 11
let secondNum = 10
print(firstNum == secondNum ? "Nums are the same" : "Nums are different")
```
#### Switch statements
If you have several conditions using if and else if, it’s often clearer to use a different construct known as switch case. Using this approach you write your condition once, then list all possible outcomes and what should happen for each of them.
```swift
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough //Swift will only run the code inside each case.
    //If you want execution to continue on to the next case, use the fallthrough keyword like this
default:
    print("Enjoy your day!")
}
```
#### Range operators
 The half-open range operator, ..<, creates ranges up to but excluding the final value.
 The closed range operator, ..., creates ranges up to and including the final value.
 ```swift
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
```
#### Summary
* Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
* There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
* You can use if, else, and else if to run code based on the result of a condition.
* Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
* If you have multiple conditions using the same value, it’s often clearer to use switch instead.
* You can make ranges using ..< and ... depending on whether the last number should be excluded or included.





















