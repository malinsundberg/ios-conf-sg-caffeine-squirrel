//
//  AppSidebarNavigation.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct AppSidebarNavigation: View {
    @State private var selectedTab: Tab? = .beverages
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(tag: Tab.beverages, selection: $selectedTab) {
                    Text(Tab.beverages.title)
                        .frame(minWidth: 400, minHeight: 300)
                } label: {
                    Label(Tab.beverages.title, systemImage: Tab.beverages.sfSymbol)
                }

                NavigationLink(tag: Tab.insights, selection: $selectedTab) {
                    Text(Tab.insights.title)
                        .frame(minWidth: 400, minHeight: 300)
                } label: {
                    Label(Tab.insights.title, systemImage: Tab.insights.sfSymbol)
                }
            }.listStyle(.sidebar)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigation) {
                    Button {
                        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
                    } label: {
                        Image(systemName: "sidebar.leading")
                    }
                }
            }
        }.background(Color.backgroundColor)
    }
}

struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
    }
}
