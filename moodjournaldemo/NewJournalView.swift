//
//  JournalView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/18/25.
//

import SwiftUI
import SwiftData

struct NewJournalView: View {
    @Environment(\.modelContext) private var context
    @State private var title: String = ""
    @State private var entry: String = ""
    
    var body: some View {
        NavigationStack {
            Navbar()
                .navigationBarBackButtonHidden(true)
            VStack{
                Text("New Journal Entry")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 10)
                
                TextField("Journal Entry Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Journal entry goes here...", text: $entry)
                    .frame(height: 200)
                    .textFieldStyle(.roundedBorder)
                    
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
            
            NavigationLink(destination: JournalView()) {
                VStack {
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                    Text("Back to Journals")
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
    NewJournalView()
}
