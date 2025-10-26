//
//  Armory.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Models/Armory.swift (optional map)
import Foundation
struct Armory: Identifiable, Codable {
    let id: UUID
    let name: String
    let latitude: Double
    let longitude: Double
    let address: String
}
