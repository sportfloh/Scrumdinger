//
//  HistoryView.swift .swift
//  Scrumdinger
//
//  Created by Florian Bruder on 07.02.22.
//

import SwiftUI

// MARK: -

struct HistoryView: View {
    let history: History

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

// MARK: -

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}

// MARK: -

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [
            DailyScrum.Attendee(name: "Jon"),
            DailyScrum.Attendee(name: "Darla"),
            DailyScrum.Attendee(name: "Luis")
        ],
        lengthInMinutes: 10,
        // swiftlint:disable:next line_length
        transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
    }

    static var previews: some View {
        HistoryView(history: history)
    }
}
