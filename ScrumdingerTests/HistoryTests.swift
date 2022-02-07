//
//  HistoryTests.swift
//  ScrumdingerTests
//
//  Created by Florian Bruder on 07.02.22.
//

@testable import Scrumdinger
import XCTest

// MARK: -

final class HistoryTestCase: XCTestCase {}

// MARK: -

extension HistoryTestCase {
    func testHistory() {
        let id = UUID()
        let date = Date()
        let attendees = [
            DailyScrum.Attendee(name: "Jon"),
            DailyScrum.Attendee(name: "Darla"),
            DailyScrum.Attendee(name: "Luis")
        ]
        let lengthInMinutes = 10
        let transcript = "This is a test transcript."
        let attendeeString = ListFormatter.localizedString(
            byJoining: attendees.map { $0.name }
        )

        let history = History(
            id: id,
            date: date,
            attendees: attendees,
            lengthInMinutes: lengthInMinutes,
            transcript: transcript
        )

        XCTAssertEqual(id, history.id)
        XCTAssertEqual(date, history.date)
        XCTAssertEqual(attendees, history.attendees)
        XCTAssertEqual(lengthInMinutes, history.lengthInMinutes)
        XCTAssertEqual(transcript, history.transcript)
        XCTAssertEqual(attendeeString, history.attendeeString)
    }
}
