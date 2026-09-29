//
//  Financed.swift
//  Motium
//
//  Created by Angel Mariano Mishchanchuk on 29/09/2026.
//

import Foundation
import SwiftData

@Model
class Financed{
    var car: Car?
    var downPayment: Double
    var amountFinanced: Double
    var monthlyPayment: Double
    var monthsFinanced: Int
    var startDate: Date
    
    var totalAmount: Double {
        downPayment + (monthlyPayment * Double(monthsFinanced))
    }
    
    var totalToRepay: Double{
        monthlyPayment * Double(monthsFinanced)
    }
    
    var paymentsMade: Int {
        let calendar = Calendar.current
        
        let components = calendar.dateComponents(
            [.month],
            from: startDate,
            to: Date.now
        )
        
        if let months = components.month {
            if months <= monthsFinanced{
                return(months)
            }
            else{
                return monthsFinanced
            }
        }
        
        return 0
    }
    
    var totalToPay: Double {
        var remainingPayments = monthsFinanced - paymentsMade
        
        return monthlyPayment * Double(remainingPayments)
    }
    
    init(car: Car? = nil, downPayment: Double, amountFinanced: Double, monthlyPayment: Double, monthsFinanced: Int, startDate: Date) {
        self.car = car
        self.downPayment = downPayment
        self.amountFinanced = amountFinanced
        self.monthlyPayment = monthlyPayment
        self.monthsFinanced = monthsFinanced
        self.startDate = startDate
    }
}
