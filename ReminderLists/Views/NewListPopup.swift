//
//  NewListPopup.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct NewListPopup: View {
    @State private var name = ""
    @State private var selectedTime = Date()
    var body: some View {
        VStack {
            Text("New List").foregroundColor(.black).font(.largeTitle).fontWeight(.bold)
            HStack {
                Text("Name:")
                TextField("Enter name here", text: $name)
            }
            HStack {
                DatePicker(
                    "Time:",
                    selection: $selectedTime,
                    displayedComponents: [.hourAndMinute]
                )
            }
            
            
            
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(radius:5)
    }
}

#Preview {
    NewListPopup()
}
