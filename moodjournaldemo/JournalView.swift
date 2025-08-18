//
//  JournalView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/18/25.
//

import SwiftUI
import SwiftData

struct JournalView: View {
    @Query(sort: \JournalEntryModel.date, order: .reverse) var entries: [JournalEntryModel]

    var body: some View {
        Navbar()
            .navigationBarBackButtonHidden(true)
        
        List(entries) { entry in
            VStack(spacing: 5) {
                Text(entry.title)
                    .font(.headline)
                Text(entry.entry)
                    .font(.body)
                Text(entry.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 5)
        
        Spacer()
        
        HStack {
            NavigationLink(destination: NewJournalView()) {
                VStack {
                    Image(systemName: "plus.fill")
                        .imageScale(.large)
                    Text("Write a Journal")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                )
                .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
            }
            NavigationLink(destination: ContentView()) {
                VStack {
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                    Text("Home Page")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                )
                .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
            }
        }
    }
}

#Preview {
    JournalView()
}
