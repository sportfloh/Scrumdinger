//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 25.01.22.
//

import SwiftUI

// MARK: -

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
