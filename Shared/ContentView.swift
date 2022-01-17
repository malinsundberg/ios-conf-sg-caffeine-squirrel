//
//  ContentView.swift
//  Shared
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var beverageStore = BeverageStore()
    
    var body: some View {
        #if os(iOS)
        AppTabNavigation(beverageStore: beverageStore)
        #elseif os(macOS)
        AppSidebarNavigation(beverageStore: beverageStore)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
