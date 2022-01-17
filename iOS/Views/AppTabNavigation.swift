//
//  AppTabNavigation.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct AppTabNavigation: View {
    @SceneStorage("selectedTab") private var selectedTab: Tab = .beverages
    
    @ObservedObject var beverageStore: BeverageStore
    
    @State private var beverageTabScrollToTop: Bool = false
    @State private var insightsTabScrollToTop: Bool = false
    
    var body: some View {
        let selectedTabBinding: Binding<Tab> = Binding<Tab> {
            selectedTab
        } set: {
            if selectedTab == $0 {
                switch selectedTab {
                case .beverages:
                    beverageTabScrollToTop.toggle()
                case .insights:
                    insightsTabScrollToTop.toggle()
                }
            } else {
                selectedTab = $0
            }
        }
        
        TabView(selection: selectedTabBinding) {
            NavigationView {
                BeveragesView(beverageStore: beverageStore, scrollToTop: beverageTabScrollToTop)
                    .navigationBarTitle(Tab.beverages.title)
            }.tabItem {
                Label(Tab.beverages.title, systemImage: Tab.beverages.sfSymbol)
            }.tag(Tab.beverages)
            
            NavigationView {
                InsightsView(beverageStore: beverageStore, scrollToTop: insightsTabScrollToTop)
                    .navigationBarTitle(Tab.insights.title)
            }.tabItem {
                Label(Tab.insights.title, systemImage: Tab.insights.sfSymbol)
            }.tag(Tab.insights)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation(beverageStore: BeverageStore())
    }
}
