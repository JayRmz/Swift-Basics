import UIKit

func calculator(n1: Int, n2:Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}



calculator(n1: 2, n2: 3, operation: add)

// Calculator as closure
calculator(n1: 3, n2: 4, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

// Shorter closure
calculator(n1: 3, n2: 4, operation: { (no1, no2) in
    return no1 * no2
})

// A lot more Shorter closure
calculator(n1: 3, n2: 4, operation: { (no1, no2) in no1 * no2 })


// A lot more more Shorter closure
// $0 -> First param
// $1 -> Second param
calculator(n1: 3, n2: 4, operation: {  $0 * $1 })

// If last param is a closure, you can erase parameter name
let result = calculator(n1: 5, n2: 2) {$0 * $1}


/**
 Another example
 */

let array = [6,2,3,9,4,1]

func addOne(n1: Int)-> Int {
    return n1 + 1
}

let newArray = array.map{$0 + 1}
print(newArray)

let stringArray = array.map{"\($0)"}
print(stringArray)
