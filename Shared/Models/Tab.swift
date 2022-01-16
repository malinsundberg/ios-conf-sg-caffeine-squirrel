//
//  Tab.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-12.
//

import Foundation

enum Tab: String, CaseIterable, Identifiable {
    case beverages, insights
    
    var id: Self {
        self
    }
    
    var title: String {
        switch self {
        case .beverages:
            return "Beverages"
        case .insights:
            return "Insights"
        }
    }
    
    var sfSymbol: String {
        switch self {
        case .beverages:
            return "cup.and.saucer"
        case .insights:
            return "chart.bar"
        }
    }
}
