import Foundation


enum Animals{
    case cat, dog, rabbit
}


let cat = Animals.cat

cat


if cat == Animals.cat{
    "this is a cat"
}else if cat == Animals.dog{
    "this is a dog"
}else{
    "this is something else"
}

switch cat {
    
case .cat:
    "this is a cat"
    break
case .dog:
    "this is a dog"
    break
case .rabbit:
    "this is a rabbit"
    break
}

enum Shortcut{
    case fileOrFolder
    case wwwURL(path: URL)
    case song(artist: String)
}

let wwwApple = Shortcut.wwwURL(
    path: URL(string: "https://apple.com")!
)

if wwwApple == Shortcut.wwwURL(path: <#T##URL#>)




