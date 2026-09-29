//
//  Fuel.swift
//  Motium
//
//  Created by Angel Mariano Mishchanchuk on 29/09/2026.
//

import Foundation
import SwiftData

@Model
class Fuel {
    var car: Car?
    var date: Date = Date.now
    var station: String = ""

    var pricePerUnit: Double = 0
    var totalCost: Double = 0
    var mileage: Double? = nil

    var unit: FuelUnit = FuelUnit.liter

    var amount: Double {
        guard pricePerUnit > 0 else { return 0 }
        return totalCost / pricePerUnit
    }

    init(
        car: Car? = nil,
        date: Date = Date.now,
        station: String = "",
        pricePerUnit: Double,
        totalCost: Double,
        mileage: Double? = nil,
        unit: FuelUnit
    ) {
        self.car = car
        self.date = date
        self.station = station
        self.pricePerUnit = pricePerUnit
        self.totalCost = totalCost
        self.mileage = mileage
        self.unit = unit
    }
}

enum FuelUnit: String, Codable, CaseIterable {
    case liter = "L"
    case kwh = "kWh"
    case kilogram = "kg"
    case other = "Other"
}
