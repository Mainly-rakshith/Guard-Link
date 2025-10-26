//
//  Bundle+Decode.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Utils/Bundle+Decode.swift
import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Missing file: \(file)")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to load: \(file)")
        }
        let decoder = JSONDecoder()
        return (try? decoder.decode(T.self, from: data)) ?? {
            fatalError("Failed to decode: \(file)")
        }()
    }
}
