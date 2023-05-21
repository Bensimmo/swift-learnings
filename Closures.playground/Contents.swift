import Foundation

//func add(_ lhs: Int,_ rhs: Int) -> Int{
//    lhs + rhs
//}


let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

add(20, 30)

func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
}


customAdd(30, 30) {(lhs, rhs) in lhs + rhs }


let ages = [30, 20, 19, 40]

ages.sorted(by: <)


func customAdd2(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
    ) -> Int {
    function(lhs, rhs)
}




