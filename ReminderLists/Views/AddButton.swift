//
//  AddButton.swift
//  ReminderLists
//
//  Created by Liam Donlan on 6/30/25.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button(action:{
            
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size:60))
                .foregroundColor(.blue)
        }.padding()
    }
}

#Preview {
    AddButton()
}
