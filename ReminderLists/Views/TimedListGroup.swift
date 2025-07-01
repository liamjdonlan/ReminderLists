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
    @ObservedObject var tasks: TaskViewModel;
    
    var body: some View {
        Section (header: Text(time).font(.largeTitle).foregroundColor(.black)){
            NavigationLink {
                ToDoList(viewModel: tasks)
            } label: {
                Text(name)
            }
        }
    }
}

#Preview {
    TimedListGroup(time:"12:00", name:"List 1", tasks:TaskViewModel())
}
