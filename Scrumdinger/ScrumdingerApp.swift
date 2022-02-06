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
    @StateObject private var store = ScrumStore()
    @State private var errorWrapper: ErrorWrapper?

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    Task {
                        do {
                            try await ScrumStore.save(scrums: store.scrums)
                        } catch {
                            errorWrapper = ErrorWrapper(error: error, guidance: "Try again later.")
                        }
                    }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    errorWrapper = ErrorWrapper(error: error, guidance: "Scrumdinger will load sample data and continue.")
                }
            }
            .sheet(
                item: $errorWrapper,
                onDismiss: {
                    store.scrums = DailyScrum.sampleData
                },
                content: { wrapper in
                    ErrorView(errorWrapper: wrapper)

                })
        }
    }
}
