//
//  Caffeine_SquirrelApp.swift
//  Shared
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

@main
struct Caffeine_SquirrelApp: App {
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
            SidebarCommands()
        }
    }
}
