//
//  BeverageAddedIndicatorView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-16.
//

import SwiftUI

struct AddedView: View {
    var body: some View {
        Text("+1")
            .font(.footnote)
            .bold()
            .foregroundColor(.accentColor)
            .padding(.horizontal, 6)
            .overlay(
                RoundedRectangle(cornerRadius: 4, style: .continuous)
                    .strokeBorder()
                    .foregroundColor(.accentColor)
            )
    }
}

struct BeverageAddedIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        AddedView()
    }
}
