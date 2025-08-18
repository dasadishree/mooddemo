//
//  ContentView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Navbar()
            Text("Need to get something off your chest? Journalling can be a powerful tool for managing your mental health and venting your feelings. By writing about your experiences, you better understand your emotions and can learn to cope. Many therapists and psychology professionals reccomend journaling for its many health benefits. So... write a journal entry today!")
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(Color(red: 178/255, green: 218/255, blue: 235/255))
                )
                .padding()
            
            NavigationLink(destination: JournalView()) {
                VStack {
                    Image(systemName: "book.pages.fill")
                        .imageScale(.large)
                    Text("Add Journal Entry")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                )
                .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
            }
            
            
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
