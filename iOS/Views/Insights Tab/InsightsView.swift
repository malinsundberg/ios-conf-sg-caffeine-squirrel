//
//  InsightsView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct InsightsView: View {
    @ObservedObject var beverageStore: BeverageStore
    
    private var beverageCountValues: [ChartValue] {
        beverageStore.dailyBeverages.map { dailyBeverages in
            ChartValue(id: dailyBeverages.id, value: Double(dailyBeverages.beverages.count))
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ChartView(values: beverageCountValues, color: Color.chartColor1, yAxisName: "Beverages", xAxisName: "Days")
            }.padding()
        }.background(Color.backgroundColor)
    }
}

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView(beverageStore: BeverageStore())
    }
}
