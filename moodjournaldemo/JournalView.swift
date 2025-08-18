//
//  JournalView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/18/25.
//

import SwiftUI
import SwiftData

struct JournalView: View {
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
                
                TextField("Entry Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom, 10)
            }
            .padding()
            
            Spacer()
            
            NavigationLink(destination: JournalView()) {
                VStack {
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                    Text("Home")
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
