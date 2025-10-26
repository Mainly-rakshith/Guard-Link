//
//  EventItem.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Models/EventItem.swift
import Foundation
struct EventItem: Identifiable, Codable {
    let id: UUID
    let title: String
    let dateISO: String         // "2025-11-15"
    let location: String
    let notes: String?
}

