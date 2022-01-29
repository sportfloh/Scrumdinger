//
//  ThemeTests.swift
//  ScrumdingerTests
//
//  Created by Florian Bruder on 27.01.22.
//

@testable import Scrumdinger
import SwiftUI
import XCTest

// MARK: -

final class ThemeTestCase: XCTestCase {}

// MARK: - test accentColor property

extension ThemeTestCase {
    func testAccentColorBlack() {
        XCTAssertEqual(.black, Theme.yellow.accentColor)
    }

    func testAccentColorWhite() {
        XCTAssertEqual(.white, Theme.indigo.accentColor)
    }
}

// MARK: - test mainColor property

extension ThemeTestCase {
    func testMainColorBundleValue() {
        XCTAssertEqual(Color("yellow"), Theme.yellow.mainColor)
    }
}

// MARK: - test name property

extension ThemeTestCase {
    func testName() {
        XCTAssertEqual(Theme.yellow.rawValue.capitalized, Theme.yellow.name)
    }
}
