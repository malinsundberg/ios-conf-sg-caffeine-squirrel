//
//  BeveragesView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct BeveragesView: View {
    var body: some View {
        ScrollView {
            BeveragesGrid(beverages: Beverage.allCases)
                .padding()
        }.background(Color.backgroundColor)
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView()
    }
}
