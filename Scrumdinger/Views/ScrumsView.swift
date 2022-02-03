//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 27.01.22.
//

import SwiftUI

// MARK: -

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    @State private var newScrumData = DailyScrum.Data()

    var body: some View {
        List {
            ForEach($scrums) { $scrum in
                NavigationLink(
                    destination: DetailView(scrum: $scrum),
                    label: {
                        CardView(scrum: scrum)
                    }
                )
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(
                action: {
                    isPresentingNewScrumView = true
                },
                label: {
                    Image(systemName: "plus")
                }
            )
            .accessibilityLabel("New Scrum")
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NavigationView {
                DetailEditView(data: $newScrumData)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Dismiss") {
                                isPresentingNewScrumView = false
                                newScrumData = DailyScrum.Data()
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Add") {
                                let newScrum = DailyScrum(data: newScrumData)
                                scrums.append(newScrum)
                                isPresentingNewScrumView = false
                                newScrumData = DailyScrum.Data()
                            }
                        }
                    }
            }
        }
    }
}

// MARK: -

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}
