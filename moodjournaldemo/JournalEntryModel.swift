//
//  JournalEntryModel.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/18/25.
//
import SwiftData
import Foundation

@Model
class JournalEntryModel {
    var date: Date
    var title: String
    var entry: String
    
    init(date: Date = Date(), title: String, entry: String) {
        self.date = date
        self.title = title
        self.entry = entry
    }
}
