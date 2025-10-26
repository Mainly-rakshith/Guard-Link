//
//  EventsView.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Views/EventsView.swift
import SwiftUI

struct EventsView: View {
    let events: [EventItem] = Bundle.main.decode("events.json")

    var body: some View {
        NavigationStack {
            List(events.sorted { $0.dateISO < $1.dateISO }) { e in
                VStack(alignment: .leading, spacing: 6) {
                    Text(e.title).font(.headline)
                    Text(e.location).font(.subheadline)
                    Text(formattedDate(e.dateISO)).font(.caption).foregroundStyle(.secondary)
                    if let n = e.notes { Text(n).font(.caption) }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Events")
        }
    }

    private func formattedDate(_ iso: String) -> String {
        let f = DateFormatter()
        f.dateFormat = "yyyy-MM-dd"
        if let d = f.date(from: iso) {
            let out = DateFormatter()
            out.dateStyle = .medium
            return out.string(from: d)
        }
        return iso
    }
}
