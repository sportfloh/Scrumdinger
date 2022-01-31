//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 30.01.22.
//

import SwiftUI

// MARK: -

struct ThemeView: View {
    let theme: Theme

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)

            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

// MARK: -

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
