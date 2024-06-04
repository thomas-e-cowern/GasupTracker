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
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "list.clipboard")
                }
        }
    }
}

#Preview {
    ContentView()
}
