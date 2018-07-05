//: Playground - noun: a place where people can play

import UIKit

let optionalImage: UIImage? = #imageLiteral(resourceName: "nil.png")
let nonOptionalImage: UIImage = #imageLiteral(resourceName: "5.png")

var optionalNumber: Int? = 5
var number: Int = 5

//force unwrapping
if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber!)") //it's helping us keep track that it can be nil
} else {
    //handle errors
}

//optional binding
if let constantNumber = optionalNumber {
    print("constant number has a value of \(constantNumber)")
} else {
    print("optional number is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("constantNumber has a value of \(constantNumber)")
}

intPrinter()


//implicitly unwrapped optionals
let assumedValue: Int! = 5 
let implicitValue: Int = assumedValue

//Nil coaelescing & using ternary operator
let optionalInt: Int? = nil
let result = optionalInt ?? 0 //if it's nil, it will get set to 0

//Optional chaining
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = ComicConAttendee(badge: nil)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee cna enter comic con for \(daysAttendable) days.")
} else{
    print("This person hasn't purchased a ticket yet")
}

























