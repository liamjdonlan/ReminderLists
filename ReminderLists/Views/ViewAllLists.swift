//
//  SwiftUIView.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct ViewAllLists: View {
    var body: some View {
        NavigationSplitView {
            List {
                TimedListGroup(time:"1:00")
                TimedListGroup(time:"2:00")
            }.navigationTitle("My ReminderLists")
        } detail: {
            Text("Please choose a list.")
        }
    }
}

#Preview {
    ViewAllLists()
}
