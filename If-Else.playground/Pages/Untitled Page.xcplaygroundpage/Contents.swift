import Foundation


let myName = "Vandad"
let myAge = 20
let yourName = "Ben"
let yourAge = 26

if myName == "Vandad"{
    "Your anme is \(myName)"
}else{
    "Oops, I guessed it wrong"
}

if myName == "Vandad"{
    "Now I guessed it correctly"
}else if myName == "Foo"{
    "Are you foo?"
}else {
    "Okay I give up"
}


if myName == "Vandad" && myAge == 30 {
    "1"
}else if myAge == 20 {
    "2"
}else{
    "3"
}
