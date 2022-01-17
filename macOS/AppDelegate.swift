//
//  AppDelegate.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import Cocoa
import Combine

class AppDelegate: NSObject, NSApplicationDelegate {
    lazy private var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        if let button = statusBarItem.button {
            button.image = NSImage(named: NSImage.Name("Status Bar Item Icon"))
            button.font = .monospacedDigitSystemFont(ofSize: button.font?.pointSize ?? 14, weight: .regular)
            button.imagePosition = .imageOnly
        }

        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Consume Flat White", action: #selector(consumeFlatWhite(_:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Consume Rooibos", action: #selector(consumeRooibos(_:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Show Caffeine Squirrel", action: #selector(showAppMenuOption(_:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(quitMenuOption(_:)), keyEquivalent: ""))
        
        statusBarItem.menu = menu
        
        // This is a nice feature. If we want to add this, we would also want to add a way of restoring it
        // statusBarItem.behavior = .removalAllowed
    }
    
    @objc func showAppMenuOption(_ sender: Any?) {
        NSApp.activate(ignoringOtherApps: true)
        NSApp.orderedWindows.first?.makeKeyAndOrderFront(self)
    }
    
    @objc func consumeFlatWhite(_ sender: Any?) {
        StatusBarHandler.consumptionPublisher.send(.flatWhite)
    }
    
    @objc func consumeRooibos(_ sender: Any?) {
        StatusBarHandler.consumptionPublisher.send(.rooibos)
    }
    
    @objc private func quitMenuOption(_ sender: Any?) {
        NSApplication.shared.terminate(sender)
    }
}

class StatusBarHandler {
    private init() { }
    
    static let consumptionPublisher: PassthroughSubject = PassthroughSubject<Beverage, Never>()
}
