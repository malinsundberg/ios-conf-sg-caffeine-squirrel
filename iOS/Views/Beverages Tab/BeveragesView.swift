//
//  BeveragesView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct BeveragesView: View {
    @StateObject private var beverageStore = BeverageStore()
    
    private var todaysBeverages: String {
        "\(beverageStore.dailyBeverages.last?.beverages.count ?? 0) cups"
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: StylingHelpers.cardSpacing) {
                DailyBeverageInfoView(title: "Today's Beverages", highlight: todaysBeverages)
                    .padding(.top)
                
                BeveragesGrid(beverageStore: beverageStore, beverages: Beverage.allCases)
                    .padding(.bottom)
            }.padding(.horizontal)
        }.background(Color.backgroundColor)
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView()
    }
}
