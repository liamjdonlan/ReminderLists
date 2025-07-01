//
//  TimedListViewModel.swift
//  ReminderLists
//
//  Created by Liam Donlan on 7/1/25.
//

import Foundation

class TimedListsModel: ObservableObject {
    @Published var lists: [TimedList] = []
    
    func addList(name: String, time: Date) {
        let newList = TimedList(name: name, time: time, tasks: TaskViewModel())
        lists.append(newList)
    }
}
