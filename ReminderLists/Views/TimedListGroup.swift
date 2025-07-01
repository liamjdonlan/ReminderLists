//
//  TimedListGroup.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct TimedListGroup: View {
    var time: String;
    var name: String;
    
    var body: some View {
        Section (header: Text(time).font(.largeTitle).foregroundColor(.black)){
            NavigationLink {
                ToDoList()
            } label: {
                Text(name)
            }
        }
    }
}

#Preview {
    TimedListGroup(time:"12:00", name:"List 1")
}
