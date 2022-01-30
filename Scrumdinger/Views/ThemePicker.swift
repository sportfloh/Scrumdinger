//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 30.01.22.
//

import SwiftUI

// MARK: -

struct ThemePicker: View {
    @Binding var selection: Theme

    var body: some View {
        Picker("Theme", selection: $selection) {}
    }
}

// MARK: -

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
