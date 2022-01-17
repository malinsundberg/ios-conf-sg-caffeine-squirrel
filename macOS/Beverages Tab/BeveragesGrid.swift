//
//  BeveragesGrid.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct BeveragesGrid: View {
    @ObservedObject var beverageStore: BeverageStore
    @Binding var isShowingBeverageAdded: Bool
    
    let beverages: [Beverage]
    
    private let columns: [GridItem] = [
        GridItem(.flexible(minimum: 180, maximum: 300), spacing: StylingHelpers.cardSpacing),
        GridItem(.flexible(minimum: 180, maximum: 300), spacing: StylingHelpers.cardSpacing),
        GridItem(.flexible(minimum: 180, maximum: 300), spacing: StylingHelpers.cardSpacing)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: StylingHelpers.cardSpacing) {
                ForEach(beverages) { beverage in
                    Button(action: {
                        add(beverage: beverage)
                    }, label: {
                        BeverageColumn(beverage: beverage)
                    }).buttonStyle(PrimaryButtonStyle())
                }
            }.padding()
        }
    }
    
    private func add(beverage: Beverage) {
        withAnimation {
            isShowingBeverageAdded = true
        }
        
        beverageStore.addConsumed(beverage: beverage)
        
        withAnimation(.default.delay(1)) {
            isShowingBeverageAdded = false
        }
    }
}

struct BeveragesGrid_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesGrid(beverageStore: BeverageStore(), isShowingBeverageAdded: .constant(false), beverages: Beverage.allCases)
            .frame(width: 600)
    }
}
