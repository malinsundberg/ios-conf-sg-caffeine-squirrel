//
//  BeverageColumn.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct BeverageColumn: View {
    let beverage: Beverage
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 14) {
                Text(beverage.name)
                    .title()
                
                VStack(alignment: .leading, spacing: 8) {
                    HighlightView(description: "Size", highlight: "\(beverage.ounces.formatted()) oz")
                    
                    HighlightView(description: "Caffeine", highlight: "\(beverage.caffeine.formatted()) mg")
                }
            }
            
            Spacer()
        }.padding()
        .frame(maxWidth: .infinity)
        .cardBackground()
    }
}

struct BeverageColumn_Previews: PreviewProvider {
    static var previews: some View {
        BeverageColumn(beverage: Beverage.example)
    }
}
