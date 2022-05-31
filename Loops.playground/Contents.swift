import UIKit

let fruits = ["Apple", "Pear", "Orange"]
let contacts = ["Adam": 123456, "James": 98765, "Amy": 34566543]
let word = "supercalifragilisticexipialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

for fruit in fruits {
    print(fruit)
}


for contact in contacts {
    print(contact.value)
}

for letter in word {
    print(letter)
}

for num in halfOpenRange {
    print(num)
}

for _ in closedRange {
    print("number")
}
