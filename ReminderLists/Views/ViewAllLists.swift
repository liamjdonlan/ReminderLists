//
//  SwiftUIView.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI


struct ViewAllLists: View {
   
    @State private var addPopupEnabled = false
    @StateObject private var timedLists = TimedListsModel()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }
    
    
    
    var body: some View {
        NavigationSplitView {
            ZStack {
                ZStack(alignment: .bottomTrailing) {
                    
                    List {
                        ForEach(timedLists.lists) { toDolist in
                            TimedListGroup(time:dateFormatter.string(from: toDolist.time), name:toDolist.name, tasks: toDolist.tasks)
                        }
                    }.navigationTitle("My ReminderLists")
                    AddButton(addPopupEnabled: $addPopupEnabled)
                }
                if addPopupEnabled {
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            addPopupEnabled = false
                        }
                    NewListPopup(timedLists: timedLists, addPopupEnabled: $addPopupEnabled)
                }
            }
        } detail: {
            Text("Please choose a list.")
        }
    }
}

#Preview {
    ViewAllLists()
}
