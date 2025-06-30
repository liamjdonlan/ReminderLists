//
//  TimedListGroup.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct TimedListGroup: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink {
                    ToDoList()
                } label: {
                    Text("List 1")
                }
            }
            .navigationTitle("12:00")
        } detail: {
            Text("Select a list")
        }
    }
}

#Preview {
    TimedListGroup()
}
