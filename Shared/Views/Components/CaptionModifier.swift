//
//  CaptionModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct CaptionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .foregroundColor(.gray)
    }
}

extension Text {
    func caption() -> some View {
        modifier(CaptionModifier())
    }
}

