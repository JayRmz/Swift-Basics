//
//  main.swift
//  ProtocolsAndDelegates
//
//  Created by Juan Ramírez Blancas on 08/05/22.
//

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what hapend?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Do some chest compressions, 30 per second.")
    }
    
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethoscope() {
        print("Listen for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by the BeeGees")
    }
    
    func useElectricDtrill() {
        print("Whirr...")
    }
}




let emilio = EmergencyCallHandler()
//let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)


emilio.assessSituation()
emilio.medicalEmergency()

