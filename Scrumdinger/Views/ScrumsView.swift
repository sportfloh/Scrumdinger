//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 27.01.22.
//

import SwiftUI

// MARK: -

struct ScrumsView: View {
    let scrums: [DailyScrum]

    var body: some View {
        List {
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

// MARK: -

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
