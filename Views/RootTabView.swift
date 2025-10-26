//
//  RootTabView.swift
//  Guard Link
//
//  Created by Rakshith Jayakarthikeyan on 10/25/25.
//

// Views/RootTabView.swift
import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ResourcesView()
                .tabItem { Label("Resources", systemImage: "list.bullet.rectangle") }
            EventsView()
                .tabItem { Label("Events", systemImage: "calendar") }
            HelpView()
                .tabItem { Label("Help", systemImage: "phone.fill") }
            // MapView() // optional
            //   .tabItem { Label("Map", systemImage: "map") }
        }
    }
}
