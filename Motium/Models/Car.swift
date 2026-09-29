//
//  Car.swift
//  Motium
//
//  Created by Angel Mariano Mishchanchuk on 29/09/2026.
//

import Foundation
import SwiftData

@Model
class Car{
    var brand: String = ""
    var model: String = ""
    var year: Int = 0
    var power: Int = 0
    var licencePlate: String = ""
    var VIN: String = ""
    
    @Attribute(.externalStorage)
    var imageData: Data?
    
    var purchaseMileage: Double = 0
    
    @Relationship(deleteRule: .cascade, inverse: \Financed.car)
    var finance: Financed? = nil
    
    @Relationship(deleteRule: .cascade, inverse: \MileageEvo.car)
    var mileageRecords: [MileageEvo] = []
    
    @Relationship(deleteRule: .cascade, inverse: \Fuel.car)
    var fuelRecords: [Fuel] = []
    
    var fuelType: FuelTypes = FuelTypes.petrol
    
    var purchaseDate: Date = Date.now
    var purchasePrice: Double = 0
    
    init(brand: String, model: String, year: Int, power: Int, licencePlate: String, VIN: String, purchaseMileage: Double, fuelType: FuelTypes, purchaseDate: Date, purchasePrice: Double) {
        self.brand = brand
        self.model = model
        self.year = year
        self.power = power
        self.licencePlate = licencePlate
        self.VIN = VIN
        self.purchaseMileage = purchaseMileage
        self.fuelType = fuelType
        self.purchaseDate = purchaseDate
        self.purchasePrice = purchasePrice
    }
    
}

enum FuelTypes: String, Codable, CaseIterable{
    case petrol = "Petrol"
    case diesel = "Diesel"
    case hybrid = "Hybrid"
    case electric = "Electric"
    case lpg = "LPG"
    case hydrogen = "Hydrogen"
    case other = "Other"
    
    static let fuelTypesOptions: [FuelTypes] = [.petrol, .diesel, .hybrid, .electric, .lpg, .hydrogen, .other]
}
