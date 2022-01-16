//
//  Beverage.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-09.
//

import Foundation
import SwiftUI

enum Beverage: String, Identifiable, CaseIterable {
    case pourOver, espresso, americano, macchiato, gibraltar, cappuccino, flatWhite, latte, blackTea, greenTea, rooibos, chamomile
    
    var id: Self {
        self
    }
    
    var name: String {
        switch self {
        case .pourOver:
            return "Pour Over"
        case .espresso:
            return "Espresso"
        case .americano:
            return "Americano"
        case .macchiato:
            return "Macchiato"
        case .gibraltar:
            return "Gibraltar"
        case .cappuccino:
            return "Cappuccino"
        case .flatWhite:
            return "Flat White"
        case .latte:
            return "Latte"
        case .blackTea:
            return "Black Tea"
        case .greenTea:
            return "Green Tea"
        case .rooibos:
            return "Rooibos"
        case .chamomile:
            return "Chamomile"
        }
    }
    var ounces: Double {
        switch self {
        case .pourOver:
            return 12
        case .espresso:
            return 1
        case .americano:
            return 8
        case .macchiato:
            return 3
        case .gibraltar:
            return 4.5
        case .cappuccino:
            return 6
        case .flatWhite:
            return 8
        case .latte:
            return 10
        case .blackTea:
            return 8
        case .greenTea:
            return 8
        case .rooibos:
            return 10
        case .chamomile:
            return 10
        }
    }
    
    var caffeine: Double {
        switch self {
        case .pourOver:
            return 96
        case .espresso:
            return 64
        case .americano:
            return 128
        case .macchiato:
            return 128
        case .gibraltar:
            return 128
        case .cappuccino:
            return 128
        case .flatWhite:
            return 128
        case .latte:
            return 128
        case .blackTea:
            return 47
        case .greenTea:
            return 28
        case .rooibos:
            return 0
        case .chamomile:
            return 0
        }
    }
}

extension Beverage {
    static let example: Beverage = .pourOver
}
