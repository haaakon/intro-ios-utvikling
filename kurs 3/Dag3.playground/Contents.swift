//: Playground - noun: a place where people can play

import UIKit
import Foundation
import PlaygroundSupport


let url = URL(string: "http://www.omdbapi.com/?t=star+wars&y=&plot=short&r=json")!
let session = URLSession.shared

let task = session.dataTask(with: url, completionHandler: { (data, response, error) -> Void in

    let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)

    let object = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments)


})

task.resume()
PlaygroundPage.current.needsIndefiniteExecution = true

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



