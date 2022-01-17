//
//  ChartBar.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct ChartBar: View {
    let value: Double
    let color: Color
    let isSelected: Bool
    
    private var scale: CGFloat {
        isSelected ? 1.025 : 1.0
    }
    
    private var linearGradientColor: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [color, color.opacity(isSelected ? 0.8 : 0.4)]), startPoint: .bottom, endPoint: .top)
    }
    
    var body: some View {
        GeometryReader { geo in
            RoundedCornerRectangle(topLeft: 12, topRight: 12, bottomLeft: 0, bottomRight: 0)
                .fill(linearGradientColor)
                .padding(.top, getInset(for: geo.size.height, value: value))
                .scaleEffect(scale, anchor: .bottom)
        }
    }
    
    private func getInset(for frameHeight: Double, value: Double) -> Double {
        frameHeight - (value * frameHeight)
    }
}

struct ChartBar_Previews: PreviewProvider {
    static var previews: some View {
        ChartBar(value: 0.7, color: Color.chartColor1, isSelected: false)
    }
}

