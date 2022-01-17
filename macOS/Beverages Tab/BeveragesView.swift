//
//  BeveragesView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct BeveragesView: View {
    @SceneStorage("displayMode") private var displayMode: BeveragesView.DisplayMode = .grid
    
    @ObservedObject var beverageStore: BeverageStore
    
    @Binding var isShowingBeverageAdded: Bool
    
    private let beverages: [Beverage] = Beverage.allCases
    
    var body: some View {
        VStack {
            switch displayMode {
            case .grid:
                BeveragesGrid(beverageStore: beverageStore, isShowingBeverageAdded: $isShowingBeverageAdded, beverages: beverages)
            case .table:
                BeveragesTable(beverages: beverages)
            }
        }.toolbar {
            Picker("Display Mode", selection: $displayMode) {
                ForEach(BeveragesView.DisplayMode.allCases) { displayMode in
                    Label(displayMode.title, systemImage: displayMode.sfSymbolName)
                }
            }.pickerStyle(.segmented)
        }
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView(beverageStore: BeverageStore(), isShowingBeverageAdded: .constant(false))
    }
}
