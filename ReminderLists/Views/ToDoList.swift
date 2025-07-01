//
//  ToDoList.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct ToDoList: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var newTaskTitle = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter new task", text: $newTaskTitle).textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        if !newTaskTitle.isEmpty {
                            viewModel.addTask(title: newTaskTitle)
                            newTaskTitle = ""
                        }
                    })  {
                        Image(systemName: "plus.circle.fill").font(.title)
                    }
                }.padding()
                List {
                    ForEach(viewModel.tasks) { task in
                        HStack {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle").onTapGesture {
                                viewModel.toggleComplete(task)
                            }
                            Text(task.title).strikethrough(task.isCompleted)
                        }
                    }.onDelete(perform: viewModel.deleteTask)
                }
            }
        }.navigationTitle("List")
    }
}

#Preview {
}
