## Day 13 :white_check_mark:
### Swift review, day one
#### Topics
+ Variables and Constants
+ Types of Data
+ Operators
+ String Interpolation
+ Arrays
+ Dictionaries
+ Conditional Statements
+ Loops
+ Switch Case

#### Variables and Constants

| <code>Var</code> | <code>Let</code> |
| ---------------- | ---------------- |
| Changeable       | Not Changeable   |
| Fast             | More Fast        |
| Unique Name      | Unique Name      |

```swift
var name = "Şule" // Variable
let surname = "Kaptan" // Constant
```
#### Types of Data
```swift
var name : String
name = "Şule"

var number : Int
number = 4

var dNumber : Double
dNumber = 13.0

var fNumber : Float
fNumber = 13.0

var real : Bool
reel = true
```

#### Double vs Float
Swift can automatically assign value types and protect them.<br>
However, it is recommended that you determine the types yourself.
```swift
var dNumber = 13.0 // Float
```
```swift
var dNumber : Double = 13.0 // Double
```

#### Operators
```swift
var number : Int = 13
number = number + 1 // 14
number = number - 1 // 13
number = number * 2 // 26
number = number / 2 // 13
```
```swift
var number : Int = 13
number += 1 // 14
number -= 1 // 13
number *= 2 // 26
number /= 2 // 13
```
```swift
var number : Double = 13.0
var number2 : Double = 13.0

var result = number + number2
```
```swift
var name = "Şule"
var surname = "Kaptan"

var fullName = name + " " + surname
```

#### Comparison
```swift
var num : Int = 13
var num2 : Int = 14

var result : Bool

result = num > num2 // false
result = num < num2 // true
result = num >= num2 // false
result = num <= num2 // true
```
```swift
var name : String = "Şule"
var result : Bool 
result = (name == "Şule") // true
```
```swift
var result = false
result // false
!result // true
```
```swift
var num : Int = 1
var result : Bool
result = (num == 1) // Equal -> true
result = (num != 1) // Not Equal -> false
```

#### String Interpolation
```swift
let name = "Şule"
let text = "My name is \(name)"
```
```swift
let fNumber : Float = 13.0
let text = "This number : \(fNumber) is float"
```
```swift
let age : Int = 24
let text = "Hi! I'm \(age) years old. And in the new year, I will be \(age + 1) years old"
```

#### Arrays
```swift
let numbers = [1, 2, 3, 4, 5]
let lettes = ["a", "b", "c", "d", "e"]

var first = numbers[0] // 1 
```
```swift
let numbers : [Int] = [1, 2, 3, 4, 5]
let lettes : [String] = ["a", "b", "c", "d", "e"]
let shuffle : [Any] = [1 , "a" , true]
```
```swift
var emptyArray : [String] = []
var emptyArray2 = [String]()
var emptyArray3 = Array<String>()
```

#### Dictionaries
```swift
var sule = [
    "name" : "Şule",
    "surname" : "Kaptan",
    "title" : "Developer"
]
sule["name"] // Şule
```
```swift
var sule : [String : Any] = [
    "name" : "Şule" ,
    "surname" : "Kaptan" ,
    "age" : 24 ,
    "lang" : ["Turkish","English"]
]

sule["lang"] // ["Turkish", "English"]
```

#### Conditional Statements
```swift
var youBored = true

if youBored {
  print("Code Swift")
}
```
```swift
var hungry = true
var dinnerTime = true

if hungry && dinnerTime {
  print("Mealll timee")
}else{
  print("Wait")
}
```

#### Loops
```swift
for i in 1...10{
    print("\(i) * 5 : \(i * 5)")
}
```
```swift
for _ in 1...10{
    print("Heeeeey!")
}
```
```swift
let songs = ["wish i loved you in the 90s", "bad ones" , "you broke me first"]
for song in songs{
    print(song)
}
```
```swift
let songs = ["wish i loved you in the 90s", "bad ones" , "you broke me first"]
for song in songs{
    if song != "wish i loved you in the 90s"{
      continue
    }
    print("My favorite song is \(song)")
}
```

#### Inner loops
```swift
for i in 0..<10{
    for j in (0..<10).reversed(){
        print("\(i) or \(j)")
    }
}
```

#### While
```swift
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 666 {
        break
    }
}
```

#### Switch Case
```swift
let health = 3

switch health {
case 1:
    print("You are about to die")

case 2:
    print("Your health is medium")

case 3:
    print("You are healthy")

default:
    print("You died")
}
```
```swift
let age = 20

switch age {
case 0...18:
    print("You are kid")

case 19...40:
     print("You are adult")

case 41...90:
    print("You are old")

default:
    print("Probably you died")
}
```
