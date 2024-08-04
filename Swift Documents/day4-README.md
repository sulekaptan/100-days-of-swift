## Day 4 :white_check_mark:
#### For loops
```swift
let count = 1...10

for number in count {
    print("Number is \(number)")
}

// with arrays: 
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}
```
#### While loops
```swift
var number = 1

while number <= 20 {
    print(number)
    number += 1
}
```
#### Repeat loops
The third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it: it’s called the repeat loop, and it’s identical to a while loop except the condition to check comes at the end.
```swift
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
```
#### Exiting loops
You can exit a loop at any time using the <b>break</b> keyword.
```swift
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}
```
#### Exiting multiple loops
As an example, we could write some code to calculate the times tables from 1 through 10 like this:
```swift
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
```
If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:
```swift
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
```
Second, add our condition inside the inner loop, then use <b>break outerLoop</b> to exit both loops at the same time:
```swift
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
```
#### Skipping items
As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use <b>continue</b> instead.
```swift
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
```
#### Infinite loops
```swift
// That loops running forever
var count = 0
while true{
  print("I'm infinite")
  count += 1
  if count == 10{
    print("No, you are broken")
    break
  }
}
```
#### Summary
* Loops let us repeat code until a condition is false.
* The most common loop is for, which assigns each item inside the loop to a temporary constant.
* If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
* There are while loops, which you provide with an explicit condition to check.
* Although they are similar to while loops, repeat loops always run the body of their loop at least once.
* You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
* You can skip items in a loop using continue.
* Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!






