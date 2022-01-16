//
//  AppTabNavigation.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct AppTabNavigation: View {
    @SceneStorage("selectedTab") private var selectedTab: Tab = .beverages
    
    @StateObject private var beverageStore = BeverageStore()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                BeveragesView(beverageStore: beverageStore)
                    .navigationBarTitle(Tab.beverages.title)
            }.tabItem {
                Label(Tab.beverages.title, systemImage: Tab.beverages.sfSymbol)
            }.tag(Tab.beverages)
            
            NavigationView {
                InsightsView(beverageStore: beverageStore)
                    .navigationBarTitle(Tab.insights.title)
            }.tabItem {
                Label(Tab.insights.title, systemImage: Tab.insights.sfSymbol)
            }.tag(Tab.insights)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
