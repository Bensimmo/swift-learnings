import Foundation

let myAge = 32
let yourAge = 20


if myAge > yourAge {
    "I'm Older than you"
} else if myAge < yourAge{
    "Im younger than you"
} else{
    
    "Oh Hey, we are the same age"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

/// 1. unary prefix
let foo = !true
/// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"



let age = 30

//let message: String
//
//if age >= 18{
//    message = "You're are an adult"
//}else {
//    message = "You are not yet an adult"
//}


let message = age >= 18 ? "You're are an adult" : "You are not yet an adult"




