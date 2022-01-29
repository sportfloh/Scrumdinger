//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 29.01.22.
//

import SwiftUI

// MARK: -

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List {
            Section(
                header: Text("Meeting Info"),
                content: {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)

                    HStack {
                        Label("Length", systemImage: "clock")
                        Spacer()
                        Text("\(scrum.lengthInMinutes) minutes")
                    }
                    .accessibilityElement(children: .combine)

                    HStack {
                        Label("Theme", systemImage: "paintpalette")
                        Spacer()
                        Text(scrum.theme.name)
                            .padding(4)
                            .foregroundColor(scrum.theme.accentColor)
                            .background(scrum.theme.mainColor)
                            .cornerRadius(4)
                    }
                    .accessibilityElement(children: .combine)
                }
            )
        }
    }
}

// MARK: -

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
