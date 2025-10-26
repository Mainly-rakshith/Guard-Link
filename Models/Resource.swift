//
//  Resource.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Models/Resource.swift
import Foundation
struct Resource: Identifiable, Codable {
    let id: UUID
    let name: String
    let category: String        // "Benefits", "Family Support", "Mental Health", "Education"
    let description: String
    let phone: String?          // e.g., "800-342-9647"
    let url: String?            // e.g., "https://www.militaryonesource.mil"
}

