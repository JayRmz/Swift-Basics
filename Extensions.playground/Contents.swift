//MARK:  Extensions

import UIKit

//extension Double {
//    func round(to places: Int) -> Double {
//        let precision = pow(10, Double(places))
//        var n = self
//        n = n * precision
//        n.round()
//        n = n / precision
//        return n
//    }
//}
//
//var myDouble = 3.14159
//
//myDouble.round(to: 6)

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}


let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.makeCircular()


/**
 From Protocols file
 */
//
//  main.swift
//  Protocol
//
//  Created by Juan Ramírez Blancas on 08/05/22.
//

//Protocols are a sort of certificate.
protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("The object take off into the air")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg(){
        if isFemale {
            print("The bird makes a new bord in a shell.")
        }
    }
}


class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps it's wings and lifts off to the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles thorugh the water.")
    }
}

struct Airplane: CanFly{
//    func fly() {
//        print("The airplane uses its engines to lift off to the air.")
//    }
    
    
}

struct FlyingMuseum{
    func flyingDemo(flyingObj: CanFly) {
        flyingObj.fly()
    }
}

//let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()

//let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly() //inherits functionallity that shouldn't have

let myPlane = Airplane()
myPlane.fly() // It uses extension functionallity

//let museum = FlyingMuseum()
//museum.flyingDemo(flyingObj: myEagle)
//museum.flyingDemo(flyingObj: myPlane)


