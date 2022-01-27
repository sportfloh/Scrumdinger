//
//  CardView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 27.01.22.
//

import SwiftUI

// MARK: -

struct CardView: View {
    let scrum: DailyScrum

    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)

            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

// MARK: -

struct CardView_Previews: PreviewProvider {
    static let scrum = DailyScrum.sampleData[0]

    static var previews: some View {
        CardView(scrum: scrum)
            .background(.yellow)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
