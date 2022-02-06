//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 06.02.22.
//

import Foundation

// MARK: -

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String

    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
