//
//  ContentView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 6/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MileageTrackerView()
                .tabItem {
                    Label("Tracker", systemImage: "signpost.right.circle")
                }
            GasCostEntryView()
                .tabItem {
                    Label(
                        "Costs", systemImage: "dollarsign.circle"
                    )
                }
            ReportsView()
                .tabItem {
                    Label("Reports", systemImage: "list.clipboard")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.circle")
                }
        }
        .tint(Color("LightGreen"))
    }
}

#Preview {
    ContentView()
}
