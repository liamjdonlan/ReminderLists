//
//  TimedList.swift
//  ReminderLists
//
//  Created by Liam Donlan on 7/1/25.
//

import Foundation

struct TimedList: Identifiable {
    let id = UUID()
    var name: String
    var time: Date
    var tasks: TaskViewModel
}
