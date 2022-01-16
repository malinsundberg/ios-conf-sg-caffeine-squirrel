//
//  HighlightView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct HighlightView: View {
    let description: String
    let highlight: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(description)
                .detail()
                
            Text(highlight)
                .highlight()
        }
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView(description: "Size", highlight: "8 oz")
    }
}
