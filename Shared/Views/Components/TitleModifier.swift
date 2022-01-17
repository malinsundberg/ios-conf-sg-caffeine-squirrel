//
//  TitleModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import Foundation

import SwiftUI

fileprivate struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3.bold())
            .foregroundColor(Color.cardBackgroundColor)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color.accentColor))
    }
}

extension Text {
    func title() -> some View {
        modifier(TitleModifier())
    }
}
