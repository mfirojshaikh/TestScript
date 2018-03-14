//
//  Car.swift
//  TestScript
//
//  Created by Firoj Shaikh on 09/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import Foundation
enum CarTransmissionMode {
    case Park
    case Reverse
    case Neutral
    case Drive
}

enum  CarType {
    case Economy
    case OffRoad
    case Sport
}

class Car {
    
    var miles = 0
    var type: CarType
    var carTransmissionMode: CarTransmissionMode
    init(type: CarType, transmissionMode: CarTransmissionMode ) {
        self.type = type
        self.carTransmissionMode = transmissionMode
    }
    
    func start(minutes: Int) {
        var speed = 0
        if self.type == .Economy && self.carTransmissionMode == .Drive {
            speed = 30
        }
        
        if self.type == .OffRoad && self.carTransmissionMode == .Drive {
            speed = 50
        }
        
        if self.type == .Sport && self.carTransmissionMode == .Drive {
            speed = 70
        }
        
        self.miles = speed * (minutes/60)
    }

    func makeAddition(a: Int, b: Int)->Int{
        return a + b
    }
}
