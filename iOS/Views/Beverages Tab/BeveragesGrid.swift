//
//  BeveragesGrid.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct BeveragesGrid: View {
    @ObservedObject var beverageStore: BeverageStore
    
    let beverages: [Beverage]
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing),
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: StylingHelpers.cardSpacing) {
            ForEach(beverages) { beverage in
                Button(action: {
                    beverageStore.addConsumed(beverage: beverage)
                }, label: {
                    BeverageColumn(beverage: beverage)
                }).buttonStyle(PrimaryButtonStyle())
            }
        }
    }
}

struct BeveragesGrid_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesGrid(beverageStore: BeverageStore(), beverages: Beverage.allCases)
    }
}
