//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 25.01.22.
//

import SwiftUI

// MARK: -

struct MeetingView: View {
    @Binding var scrum: DailyScrum

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)

            VStack {
                ProgressView(value: 5, total: 15)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Seconds Elapsed")
                            .font(.caption)

                        Label("300", systemImage: "hourglass.bottomhalf.fill")
                    }

                    Spacer()

                    VStack(alignment: .leading) {
                        Text("Seconds Remaining")
                            .font(.caption)

                        Label("600", systemImage: "hourglass.tophalf.fill")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")

                Circle()
                    .strokeBorder(lineWidth: 24)

                HStack {
                    Text("Speaker 1 of 3")

                    Spacer()

                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                    })
                    .accessibilityLabel("Next speaker")
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: -

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}