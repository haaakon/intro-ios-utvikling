
# Håkon Bogen
## Utvikler
## Beining & Bogen
## beiningbogen.no

---

# iOS-kurs

# Basic Swift
# iOS-progging (cocoa-touch)

Swift-oppslagsverk:
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309

---
#Konstanter og variabler - let og var

```

let message = "Hello world!" // kan ikke endres

var studentNumber = 100

studentNumber = 143 // kan endres!

// bruk "alltid" let

```

---

#Type inference

```

let message: String = "Hello world!"
let message = "Hello world!"

let numberOfStudents = 40 // Int
let percentagePresent = 0.8  // Double

// Kompilator skjønner typen automatisk


```

---
# Optionals

```

var userInput: String? = "håkon"

if let actualUserInput = userInput {
   print("name was \(userInput)")
} else {
   print("no name given")
}


```

---

#Optionals

```
var userInput: String? = nil

if let actualUserInput = userInput {
   print("name was \(userInput)")
} else {
   print("no name given")
}
```
---
#Force unwrap

```

var userInput: String? = Håkon

let actualInput = userInput!  // actualInput == String


```

---

#Funksjoner

```
func hello(name: String) {

  print("hello \(name)")

}
```

hello("world")


---
#Returverdi fra funksjon

```

func add(value1: Int, value2: Int) -> Int {

    return value1 + value2

}

let sum = add(value1: 1330, value2: 7)


```

---

#Array

```

let numbers = [1,2,3,4,5]

let numbers: [Int] = [1,2,3,4,5]

var studentAges = [24,23,23]

studentAges.append(34) // legger til 34 bakerst

```

---
#Array-iterering

```

for number in numbers {
  print(number)
}

```
---

#if

```
let studentCount = 40

if studentCount > 50 {
  print("not room for more students")
} else if studentCount == 40 {
  print("perfect amount of students")
} else if studentCount < 40 {
  print("too few students")
} else {
  print(" error? ")
}
```
---
#if

```
let schoolName = "Westerdals"

if schoolName == "Westerdals" {
   print("Student attends the correct school")
} else if schoolName != "Westerdals" {
   print("other scool")
}
```

---
#Klasser

```
class Person {

}

let person = Person()

```
---
#Klasser
```
class Person {
  let name: String

  init(name: String) {
      self.name = name
  }

}

let person = Person(name:"Håkon")
print(person.name)  // skriver ut "Håkon"

```


---
#iOS-utvikling


Hver skjerm = Din subklasse av UIViewController

```

class MyViewController: UIViewController {

}
// Vi ser på dette rett i Xcode

```

---
#IBOutlet

IBoutlets kobler UI-elementer til koden din slik at de kan endres runtime

```

@IBoutlet weak var nameLabel: UILabel!


```

Drag & drop fra borteste meny for å koble dette
Vi ser dette rett i Xcode

---
#IBAction

Kobler funksjoner til eventer som fyres pga interaksjon med UI-elementer
Action settes opp i Storyboardet, drag & drop på samme måte som @IBOutlet

```
@IBAction func didTapButton(sender: UIButton) {
  // do stuff after tapping button
}

```

---
