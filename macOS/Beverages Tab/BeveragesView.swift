//
//  BeveragesView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct BeveragesView: View {
    @ObservedObject var beverageStore: BeverageStore
    
    @Binding var isShowingBeverageAdded: Bool
    
    var body: some View {
        BeveragesGrid(beverageStore: beverageStore, isShowingBeverageAdded: $isShowingBeverageAdded, beverages: Beverage.allCases)
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView(beverageStore: BeverageStore(), isShowingBeverageAdded: .constant(false))
    }
}
