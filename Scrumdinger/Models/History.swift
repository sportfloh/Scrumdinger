//
//  History.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 03.02.22.
//

import Foundation

// MARK: -

struct History: Identifiable {
    let id = UUID()
    let date = Date()
    var attendees: [DailyScrum.Attendee]
    var lengthInMinutes = 5
}
