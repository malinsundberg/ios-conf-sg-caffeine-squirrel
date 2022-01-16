//
//  DetailModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

fileprivate struct DetailModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline.bold())
            .foregroundColor(Color.gray)
    }
}

extension Text {
    func detail() -> some View {
        modifier(DetailModifier())
    }
}
