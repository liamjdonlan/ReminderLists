//
//  NewListPopup.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct NewListPopup: View {
    @State private var newListName = ""
    @State private var newListTime = Date()
    @StateObject var timedLists = TimedListsModel()
    @Binding var addPopupEnabled: Bool
    
    var body: some View {
        VStack {
            Text("New List").foregroundColor(.black).font(.largeTitle).fontWeight(.bold)
            VStack(alignment: .leading) {
                HStack {
                    Text("Name:")
                    TextField("Enter name here", text: $newListName).frame(maxWidth:200)
                }
                HStack {
                    Text("Time: ")
                    DatePicker(
                        "",
                        selection: $newListTime,
                        displayedComponents: [.hourAndMinute]
                    ).labelsHidden()
                }
            }
            HStack {
                Button(action: {
                    addPopupEnabled.toggle()
                }) {
                    Text("Cancel")
                        .padding()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                }
                Button(action: {
                    if !newListName.isEmpty {
                        timedLists.addList(name: newListName, time: newListTime)
                        newListName = ""
                        newListTime = Date()
                        addPopupEnabled.toggle()
                    }
                }) {
                    Text("Add List")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
            
            
            
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(radius:5)
    }
}

#Preview {

}
