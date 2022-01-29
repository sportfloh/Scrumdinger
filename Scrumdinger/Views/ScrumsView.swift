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
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(
                action: {},
                label: {
                    Image(systemName: "plus")
                })
                .accessibilityLabel("New Scrum")
        }
    }
}

// MARK: -

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
