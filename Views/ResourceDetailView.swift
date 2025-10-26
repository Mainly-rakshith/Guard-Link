//
//  ResourceDetailView.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Views/ResourceDetailView.swift
import SwiftUI

struct ResourceDetailView: View {
    let resource: Resource

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(resource.name).font(.title2.bold())
                Text(resource.category).font(.subheadline).foregroundStyle(.secondary)
                Text(resource.description)

                if let phone = resource.phone, let url = URL(string: "tel://\(phone.filter{ $0.isNumber })") {
                    Link("Call \(phone)", destination: url)
                        .buttonStyle(.borderedProminent)
                }

                if let link = resource.url, let url = URL(string: link) {
                    Link("Open Website", destination: url)
                        .buttonStyle(.bordered)
                }
            }
            .padding()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
