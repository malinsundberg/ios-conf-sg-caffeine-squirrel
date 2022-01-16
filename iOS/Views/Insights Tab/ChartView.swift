//
//  ChartView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct ChartView: View {
    let values: [ChartValue]
    let color: Color
    let yAxisName: String
    let xAxisName: String
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(yAxisName)
                    .caption()
            }
            
            VStack(spacing: 0) {
                HStack {
                    ForEach(values) { chartValue in
                        ChartBar(value: normalizedValue(for: chartValue.value), color: color)
                    }
                    
                    Divider()
                }.frame(height: 240)
                
                Divider()
            }
            
            Text(xAxisName)
                .caption()
        }.padding()
        .cardBackground()
    }
    
    private func normalizedValue(for value: Double) -> Double {
        let highestValue = values.max()?.value ?? 0
        
        return value/highestValue
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(values: ChartValue.examples, color: Color.chartColor1, yAxisName: "Beverages", xAxisName: "Days")
            .padding()
    }
}
