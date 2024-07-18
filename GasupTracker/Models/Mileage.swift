//
//  Mileage.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/17/24.
//

import Foundation
import SwiftData

@Model
class Mileage {
    var miles: Double
    var date: Date
    
    init(miles: Double = 0.0, date: Date = .now) {
        self.miles = miles
        self.date = date
    }
}
