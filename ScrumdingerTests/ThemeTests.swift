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

// MARK: - test mainColor property

extension ThemeTestCase {
    func testMainColorBundleValue() {
        let theme = Theme.yellow
        XCTAssertEqual(Color("yellow"), theme.mainColor)
    }
}
