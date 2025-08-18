//
//  moodjournaldemoApp.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/17/25.
//

import SwiftUI
import SwiftData

@main
struct moodjournaldemoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
        }
        .modelContainer(for: JournalEntryModel.self)
    }
}
