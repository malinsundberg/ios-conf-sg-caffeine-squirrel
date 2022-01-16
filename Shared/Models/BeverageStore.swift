//
//  BeverageStore.swift
//  Caffeine Squirral
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

class BeverageStore: ObservableObject {
    @Published var dailyBeverages: [DailyBeverages]
    
    var totalBeverages: Int {
        dailyBeverages.reduce(0) { result, day in
            result + day.beverages.count
        }
    }
    
    var totalCaffeine: Double {
        dailyBeverages.reduce(0) { result, day in
            result + day.totalCaffeine
        }
    }
    
    init() {
        let calendar = Calendar.current
        let currentDate = calendar.startOfDay(for: Date())
        
        dailyBeverages = [
            DailyBeverages(
                calendar.date(byAdding: .day, value: -6, to: currentDate)!,
                beverages: [
                    Beverage.pourOver,
                    Beverage.greenTea
                ]
            ),
            DailyBeverages(
                calendar.date(byAdding: .day, value: -5, to: currentDate)!,
                beverages: [
                    Beverage.espresso
                ]
            ),
            DailyBeverages(
                calendar.date(byAdding: .day, value: -4, to: currentDate)!,
                beverages: [
                    Beverage.flatWhite,
                    Beverage.greenTea,
                    Beverage.chamomile
                ]
            ),
            DailyBeverages(
                calendar.date(byAdding: .day, value: -3, to: currentDate)!,
                beverages: [
                    Beverage.gibraltar,
                    Beverage.rooibos
                ]
            ),
            DailyBeverages(
                calendar.date(byAdding: .day, value: -2, to: currentDate)!,
                beverages: [
                    Beverage.blackTea,
                    Beverage.pourOver,
                    Beverage.greenTea
                ]
            ),
            DailyBeverages(
                calendar.date(byAdding: .day, value: -1, to: currentDate)!,
                beverages: [
                    Beverage.macchiato,
                    Beverage.pourOver
                ]
            ),
            DailyBeverages(currentDate, beverages: [])
        ]
    }
    
    func addConsumed(beverage: Beverage) {
        let todaysIndex = dailyBeverages.count - 1
        
        dailyBeverages[todaysIndex].beverages.append(beverage)
    }
}
