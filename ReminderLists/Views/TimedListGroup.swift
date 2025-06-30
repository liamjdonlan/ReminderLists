//
//  TimedListGroup.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct TimedListGroup: View {
    var time: String;
    
    var body: some View {
        Section (header: Text(time).font(.largeTitle).foregroundColor(.black)){
            NavigationLink {
                ToDoList()
            } label: {
                Text("List 1")
            }
        }
    }
}

#Preview {
    TimedListGroup(time:"12:00")
}
