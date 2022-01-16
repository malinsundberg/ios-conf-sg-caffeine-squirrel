//
//  DailyBeverages.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-12.
//

import SwiftUI

struct DailyBeverages {
    let id: UUID
    let date: Date
    var beverages: [Beverage]
    
    var totalCaffeine: Double {
        beverages.reduce(0) { result, beverage in
            result + beverage.caffeine
        }
    }
    
    init(_ date: Date, beverages: [Beverage]) {
        self.id = UUID()
        self.date = date
        self.beverages = beverages
    }
}
