//
//  ContentView.swift
//  Shared
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        AppTabNavigation()
        #elseif os(macOS)
        Text("Hello iOS Conf SG! 👋")
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
