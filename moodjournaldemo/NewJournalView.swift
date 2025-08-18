//
//  JournalView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/18/25.
//

import SwiftUI
import SwiftData

struct NewJournalView: View {
    // load in variables & data
    @Environment(\.modelContext) private var context
    @State private var title: String = ""
    @State private var entry: String = ""
    
    var body: some View {
        NavigationStack {
            // navbar
            Navbar()
                .navigationBarBackButtonHidden(true)

            // form for new journals
            VStack{
                Text("New Journal Entry")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 10)
                    .foregroundStyle(.pink)

                // title
                TextField("Journal Entry Title", text: $title)
                    .textFieldStyle(.roundedBorder)

                // entry
                TextField("Journal entry goes here...", text: $entry)
                    .frame(height: 200)
                    .textFieldStyle(.roundedBorder)

                // button & saving functionality
                Button(action: {
                    let newEntry = JournalEntryModel(
                        title: title,
                        entry: entry
                    )
                    context.insert(newEntry)
                    try? context.save()
                    
                    title = ""
                    entry = ""
                }) {
                    Text("Save Entry")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.pink)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()

            // links to jounrals and home page
            HStack {
                    // past journals view
                NavigationLink(destination: JournalView()) {
                    VStack {
                        Image(systemName: "book.pages.fill")
                            .imageScale(.large)
                        Text("Past Journals")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                    )
                    .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
                }

                // home view
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
}

#Preview {
    NewJournalView()
}
