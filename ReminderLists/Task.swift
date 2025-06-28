//
//  Task.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/28/25.
//

import Foundation

struct Task: Identifiable, Codable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
