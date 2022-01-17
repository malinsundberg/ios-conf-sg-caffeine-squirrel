//
//  PlatformModifiers.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-13.
//

import SwiftUI

extension View {
    @ViewBuilder
    func iOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
        #if os(iOS)
        modifier(self)
        #elseif os(macOS)
        self
        #endif
    }
    
    @ViewBuilder
    func macOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
        #if os(iOS)
        self
        #elseif os(macOS)
        modifier(self)
        #endif
    }
}
