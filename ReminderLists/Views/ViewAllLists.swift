//
//  SwiftUIView.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct ViewAllLists: View {
    @State private var showNewListPopup = false
    var body: some View {
        NavigationSplitView {
            ZStack {
                ZStack(alignment: .bottomTrailing) {
                    List {
                        TimedListGroup(time:"1:00")
                        TimedListGroup(time:"2:00")
                    }.navigationTitle("My ReminderLists")
                    AddButton()
                }
                if showNewListPopup {
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            showNewListPopup = false
                        }
                    NewListPopup()
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                        
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
