//
//  InsightsView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct InsightsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ChartView(values: ChartValue.examples, color: Color.chartColor1, yAxisName: "Beverages", xAxisName: "Days")
            }.padding()
        }.background(Color.backgroundColor)
    }
}

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView()
    }
}
