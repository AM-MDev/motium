//
//  MileageEvo.swift
//  Motium
//
//  Created by Angel Mariano Mishchanchuk on 29/09/2026.
//

import Foundation
import SwiftData

@Model
class MileageEvo{
    var car: Car?
    var date: Date = Date.now
    var mileage: Double = 0
    
    init(car: Car? = nil, date: Date = Date.now, mileage: Double) {
        self.car = car
        self.date = date
        self.mileage = mileage
    }
}
