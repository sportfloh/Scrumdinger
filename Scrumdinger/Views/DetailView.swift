//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Florian Bruder on 29.01.22.
//

import SwiftUI

// MARK: -

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: -

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
