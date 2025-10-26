//
//  ResourcesView.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Views/ResourcesView.swift
import SwiftUI

struct ResourcesView: View {
    let resources: [Resource] = Bundle.main.decode("resources.json")
    @State private var query = ""

    var filtered: [Resource] {
        guard !query.isEmpty else { return resources }
        return resources.filter {
            $0.name.localizedCaseInsensitiveContains(query) ||
            $0.category.localizedCaseInsensitiveContains(query)
        }
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(filtered) { r in
                    NavigationLink(value: r) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(r.name).font(.headline)
                            Text(r.category).font(.caption).foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Resources")
            .searchable(text: $query, placement: .automatic)
            .navigationDestination(for: Resource.self) { r in
                ResourceDetailView(resource: r)
            }
        }
    }
}

