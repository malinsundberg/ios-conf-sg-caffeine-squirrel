//
//  HighlightModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct HighlightModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2.bold())
            .foregroundColor(Color.primary)
    }
}

extension Text {
    func highlight() -> some View {
        modifier(HighlightModifier())
    }
}

