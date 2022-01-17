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
    let description: String
    let highlight: String
    
    @Binding var selectedValue: ChartValue?
    
    var body: some View {
        VStack {
            HStack {
                HighlightView(description: description, highlight: highlight)
                    .animation(nil, value: selectedValue)
                
                Spacer()
                Text(yAxisName)
                    .caption()
            }
            
            VStack(spacing: 0) {
                HStack {
                    ForEach(values) { chartValue in
                        ChartBar(value: normalizedValue(for: chartValue.value), color: color, isSelected: selectedValue == chartValue)
                        .onTapGesture {
                            withAnimation {
                                if selectedValue == chartValue {
                                    selectedValue = nil
                                } else {
                                    selectedValue = chartValue
                                }
                            }
                        }
                    }
                    
                    Divider()
                }.frame(height: 240)
                
                Divider()
            }
            
            Text(xAxisName)
                .caption()
        }.padding()
        .background(Color.cardBackgroundColor)
        .cardBackground()
    }
    
    private func normalizedValue(for value: Double) -> Double {
        let highestValue = values.max()?.value ?? 0
        
        return value/highestValue
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(values: ChartValue.examples, color: Color.chartColor1, yAxisName: "Beverages", xAxisName: "Days", description: "Amount", highlight: "12", selectedValue: .constant(nil))
            .padding()
    }
}
