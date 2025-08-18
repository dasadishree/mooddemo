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
        // app navigation stack & views
        WindowGroup {
            NavigationStack {
                ContentView()
            }
        }
        // makes swiftdata persistent
        .modelContainer(for: JournalEntryModel.self)
    }
}
