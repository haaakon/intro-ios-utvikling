//: Playground - noun: a place where people can play

import UIKit

var name = "håkon"

name = "krister"

var numbers: [Any] = [34,34,3]


numbers.append("hei")
numbers.append(3.2)


let numberOfStudents = 490099

if numberOfStudents > 30 {
    print("ett eller annet")
} else {
    print("else")
}

func hello( name: String, age : Int, userWrittenTitle: String?) {


    if let actualUserWrittenTitle = userWrittenTitle {

        print("hello \(name), age: \(age) title: \(actualUserWrittenTitle)")

        
    } else {

        print("no title")

    }
    
}

hello(name: "world", age: 343, userWrittenTitle: "Dr")
hello(name: "world", age: 343, userWrittenTitle: nil)
hello(name: "world", age: 343, userWrittenTitle: nil)

func sum(value1: Int, value2: Int) -> Int {

    return value1 + value2

}

let number = sum(value1: 7, value2: 1330)


func stuff(name: String) -> Int? {

    return nil

}

class Person {

    var name: String

    init(name: String) {

        self.name = name
        
    }
    
}

let person = Person(name: "håkon")

person.name = "vidar"




// Oppgave 1
// Lag en konstant med navnet ditt
// Forsøk å sette verdien til noe annet.
// Hvorfor fikk du feilmelding nå?


// Oppgave 2
// Lag en varabel med antall studenter, endre den til forskjellige verdier 3 ganger



// Oppgave 3
// Lag en konstant med en eksplisitt String type og verdien “iOS FTW” - Fjern deretter typen. Hvorfor er dette mulig?


// Oppgave 4 Lag en funksjon, minimum, som tar to verdier, og returnerer den minste

// Oppgave 5 Lag en funksjon som tar en optional String og skriver den ut hvis den inneholdt en verdi, og "tom string", hvis den ikke hadde en verdi

// Oppgave 5:
// Lag en funksjon, sumOfAllValues, som summerer all verdiene i et array


// Oppgave 6:
// Lag et array med String, gå gjennom det og print ut hver verdi

// Oppgave 7:
// Skriv en funksjon som tar en Int som argument, og skriver ut forskjellige tekster basert pa om den er større, mindre eller lik 100

// Oppgave 8:
// Lag et array med både tall og bokstaver. Hva skjer?

// Oppgave 9: 
// Sett arrayet fra oppgave 8 til å være typen [Any] . Du kan lese mer om [Any] her https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TypeCasting.html under avsnittet Type Casting for Any and AnyObject. Prøv å legge til flere forskjellige objekter til arrayet.



// #iOS

// Oppgave 1
// Lag en nytt prosjekt og koble en label med IBOutlet slik at du kan endre den

// Oppgave 2
// Lag en knapp som kan trykkes på, koble action slik at en funksjon i koden din kalles når bruker trykker på knappen
// Hint : didTouchUpInside

// Oppgave 3
// Endre teksten på en label når bruker trykker en knapp

// Oppgave 4
// legg til 3 knapper, og endre label til å bli teksten til den knappen som bruker trykker på

// Oppgave 5
// Lagre et [String] array, gjør det slik at hver gang bruker trykker på en knapp,
// så viser en label en random tekst fra arrayet

// Oppgave 6
// Legg til et UITextField, det brukeren skriver inn skal gå til en UILabel, når brukeren trykker på en knapp
