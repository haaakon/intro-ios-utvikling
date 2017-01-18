//: Playground - noun: a place where people can play

import UIKit
import Foundation
import PlaygroundSupport


// Repetisjon



var closure : (() -> ())?


closure = {


}


closure?()


func closureFunction() {

}



closureFunction()

let url = URL(string: "http://www.omdbapi.com/?t=star+wars&y=&plot=short&r=json")!
let session = URLSession.shared

let task = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

    let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
    print(string)

    let object = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments)


})

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true


let json = ["nawe": "The matrix"]


class Movie {

    let title: String

    let genre: String?

    init?(jsonDict: [String : Any]) {

        guard let title = jsonDict["name"] as? String else {
            return nil
        }

        self.title = title
        self.genre = jsonDict["genre"] as? String

    }
    
}

if let movie = Movie(jsonDict: json) {

} else {

    print("json structure wrong: \(json)")

}


// Har du klart alle oppgavene fra de forrige øktene? Hvis ikke, gjør de ferdig.

// Oppgave 1
// Implementer Vehicle med subklassen Car og subklassen dens, RaceCar
// Fyll disse med attributter, og lag instanser av alle tre

// Oppgave 2
// Skriv kode slik at dette kompilerer
// if let street = westerdals.students.first?.address?.street {

// }

// Oppgave 3
// Lag et tableview med elementer du kan trykke for å gå til detaljsiden til



// Oppgave 3
// Lag et tableview som viser data fått fra APIet til IMDB , du kan vise hver attributt i en egen cell


// Oppgave 4 (vanskelig)
// Lag et søkefelt hvor du kan søke etter filmer, som vises i TableViewet, når man trykker på en av filmene skal man gå til detaljsiden for den filmen og se mer informasjon om den



