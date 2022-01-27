//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 27.01.22.
//

import SwiftUI

// MARK: -

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// MARK: -

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
