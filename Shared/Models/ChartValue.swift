//
//  ChartValue.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-10.
//

import Foundation

struct ChartValue: Identifiable, Equatable, Comparable {
    let id: UUID
    let value: Double
    
    init(id: UUID, value: Double) {
        self.id = id
        self.value = value
    }
    
    static func < (lhs: ChartValue, rhs: ChartValue) -> Bool {
        lhs.value < rhs.value
    }
}

extension ChartValue {
    static let examples = [
        ChartValue(id: UUID(), value: 2),
        ChartValue(id: UUID(), value: 1),
        ChartValue(id: UUID(), value: 3),
        ChartValue(id: UUID(), value: 2),
        ChartValue(id: UUID(), value: 1)
    ]
}
