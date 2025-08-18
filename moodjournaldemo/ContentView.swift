//
//  ContentView.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Navbar()
        VStack {
            Image(systemName: "book.pages.fill")
                .imageScale(.large)
                .foregroundStyle(.green)
            Text("Add a Journal Entry:")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.blue)
        )

        Spacer()

    }
}

#Preview {
    ContentView()
}
