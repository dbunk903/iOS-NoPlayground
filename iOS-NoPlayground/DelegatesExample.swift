import Foundation
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate:AdvancedLifeSupport?
    func assessSituation(){
        print("Can you tell me what happend?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport{
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("as Paramedic, perform chest compression")
    }
}

class Doctor: AdvancedLifeSupport{
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("Doctor perform chest compression")
    }
    
    func useStethescope(){
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        print("Surgeon perfom chest compression")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let sarah = Doctor(handler: emilio)
let he = Surgeon(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()
emilio.medicalEmergency()

