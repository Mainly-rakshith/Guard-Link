//
//  HelpView.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Views/HelpView.swift
import SwiftUI

struct HelpView: View {
    var body: some View {
        List {
            Section("Emergency") {
                callRow(label: "Veterans Crisis Line (988, press 1)", number: "988")
                callRow(label: "911 (Immediate Emergency)", number: "911")
            }
            Section("Key Services") {
                linkRow(title: "Military OneSource", url: "https://www.militaryonesource.mil")
                linkRow(title: "VA Arkansas Health", url: "https://www.va.gov/directory/guide/state.asp?STATE=AR")
            }
        }
        .navigationTitle("Help")
    }

    @ViewBuilder
    private func callRow(label: String, number: String) -> some View {
        if let url = URL(string: "tel://\(number.filter{ $0.isNumber })") {
            Link(destination: url) { Label(label, systemImage: "phone.fill") }
        }
    }
    @ViewBuilder
    private func linkRow(title: String, url: String) -> some View {
        if let u = URL(string: url) { Link(destination: u) { Label(title, systemImage: "link") } }
    }
}
