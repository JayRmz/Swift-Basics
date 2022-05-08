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
    func fly() {
        print("The airplane uses its engines to lift off to the air.")
    }
    
    
}

struct FlyingMuseum{
    func flyingDemo(flyingObj: CanFly) {
        flyingObj.fly()
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly() //inherits functionallity that shouldn't have

let myPlane = Airplane()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObj: myEagle)
museum.flyingDemo(flyingObj: myPlane)


