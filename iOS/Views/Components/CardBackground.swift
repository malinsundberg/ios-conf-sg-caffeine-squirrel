//
//  CardBackground.swift
//  Caffeine Squirral (iOS)
//
//  Created by Malin Sundberg on 2022-01-09.
//

import SwiftUI

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.cardBackgroundColor)
            .clipShape(StylingHelpers.cardClipShape)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 0)
    }
}

extension View {
    func cardBackground() -> some View {
        modifier(CardBackground())
    }
}
