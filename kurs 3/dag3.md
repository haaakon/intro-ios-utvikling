
#Økt 3

#### Mer Swift
#### Flere skjermer + laste inn JSON

---

#Arv
* En klasse som arver fra en annen betegnes __subclass__
* Klassen som __subclass__ arver fra betegnes __superclass__
* En klasse som ikke arver av noen betegnes __base class__
* En __subclass__ kan kalle metoder, properties og subscripts på __superclass__
* __subclass__ kan overstyre __superclass__ sine metoder, properties og subscripts

---

```swift
// base class og superclass

class LivingThing {

    let birth: Date
    var death: Date?

    // Kan ikke overskrives
    final var isAlive: Bool {
        return self.death == nil
    }

    init(birth: Date) {
        self.birth = birth
    }

    var description: String {
        return "Jeg er en levende ting som ble født \(self.birth)"
    }
}
```

---

```swift
// subclass og superclass

class Person : LivingThing {
    let firstName: String
    let lastName: String

    var fullName: String {
        return "\(self.firstName) \(self.lastName)"
    }

    // required - gjør at subclass må implementere kontruktøren
    required init(firstName: String, lastName:String, birth: NSDate) {
        self.firstName = firstName
        self.lastName = lastName
        // super kan brukes til å kalle metoder, properties og subscripts
        super.init(birth:birth)
    }

    func sayHello() -> String {
        return "Hello"
    }
}
```

---

```swift
// subclass

class Student : Person {

    // Vil gi kompile error pga required
    init {

    }

    override var description: String {
        return "Student på Westerdals med navn \(self.fullName)"
    }

    override func sayHello() -> String {
        return "Halla lizm"
    }

    // Compile error
    override var isAlive: Bool {
        return true
    }
}

var gunnar = Student(firstName: "Lars", lastName: "Gunnar", birth: Date())
gunnar.firstName // Lars
gunnar.description // Student på Westerdals med navn Lars Gunnar

gunnar.birth // 2014-09-07 14:17:59 +0000
```

---
# Optional Chaining


```swift
if let street = westerdals.students.first?.address?.street {
    print("Studenten bor i \(street).")
} else {
    print("Kunne ikke hente gatenavn")
}

```

---

#Få data fra nett
#### jsonlint.com
#### omdbapi.com

```swift

let url = URL(string: "http://www.omdbapi.com/?t=star+wars&y=&plot=short&r=json")!
let session = URLSession.shared

let task = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

    let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
    let object = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments)

    print(string)

})

task.resume()


```

let url = URL(string: "http://www.omdbapi.com/?t=star+wars&y=&plot=short&r=json")!
let session = URLSession.shared

let task = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

    let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)

    let object = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments)


})

task.resume()
PlaygroundPage.current.needsIndefiniteExecution = true
