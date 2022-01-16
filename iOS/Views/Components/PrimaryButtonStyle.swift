//
//  PrimaryButtonStyle.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .overlay(configuration.isPressed ? Color.primary.opacity(0.1).clipShape(StylingHelpers.cardClipShape) : nil)
    }
}

