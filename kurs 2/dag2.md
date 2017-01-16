
DAG 2
---

# Mer Swift
# TableView og flere skjermer i app

---

#Dictionary

let dict = ["bogen" : 29]
// type: [String : Int]

let dict2 = ["name" : "Per"]
// type: [String : String]

var dict3 = ["name" : "Per", "age" : 27]
// type: [String : Any]

---

#Dictionary

dict3["randomTall"] = 23
dict3["genserFarge"] = "rød"
dict3.removeValue(forKey: "randomTall")

---
#Avanserte funksjoner

func createFunction() -> () -> String {
    func helloWorld() -> String {
        return "Hello world"
    }
    return helloWorld
}
func invokeFunction(fn: () -> String, times: Int) {
    for _ in 0 ..< times {
        print(fn())
    }
}
// Funksjon som lager en funksjon
let fn = createFunction()
// Kan kalles direkte
print(fn())
// Eller sendes videre til annen funksjon
invokeFunction(fn: fn, times: 3)

---

#Closures - Syntaks
####  Aka lambdas, anonyme funksjoner
{ (parametere) -> returntype in
    uttrykk
}
let greetingClosure =  { (greeting : String) -> Void in
    print(greeting)
}
greetingClosure("Hei")

---

#Closures - Syntaks

 // På Array:
public func sorted(by: (Int, Int) -> Bool) -> [Int]

var numbers = [43,2,1,90]
numbers.sorted(by { x, y in
    if y > x {
})
// 1,2,43,90

---
#Closures - typisk usage

func download(url: String, completed: (json: String) -> ()) {

  let jsonData = Alamofire.download(url)
  completed(jsonData)

}

download(url: "imdb.com/the-matrix") { json in
    // do stuff after download completed
}
---

# Enum

enum Vaskeprogram {
    case ikkeValgt
    case bomull
    case ull
    case syntetisk
}

var program = Vaskeprogram.ikkeValgt
program = .bomull

---

#  Mer klasser

/ Deklarere
class Server {
    // Stored properties - ikke instansvariabler
    var ip: String
    var startTime : Date?
    var running = false
    // Konstruktør
    init(ip: String) {
        self.ip = ip
    }
}
// Instansiere
let server = Server(ip: "192.168.0.1")

---

# Metoder

class Server {
    // ...
    func boot() {
        startTime = Date()
} }
let server = Server(ip: "192.168.0.1")
server.boot()

---
# Klasse-meotder
class Server {

  class func type() -> String {

    return "Dual-core"

  }

}

Server.type()   // "Dual-core"

---

#2. Økt

# Vi ser på "grunnsteinen" i nesten alle apper. UITableView




---
# Videre lesning:

Sjekk ut iOS-kurset fra Stanford
https://www.youtube.com/watch?v=_lRx1zoriPo&t=2753s

---
