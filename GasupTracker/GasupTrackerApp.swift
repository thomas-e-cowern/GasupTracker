//
//  GasupTrackerApp.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 6/4/24.
//

import SwiftUI
import SwiftData

@main
struct GasupTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Mileage.self)
    }
}
