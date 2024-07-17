//
//  QuickEntryView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/5/24.
//

import SwiftUI

struct QuickEntryView: View {
    var body: some View {
        NavigationStack {
            Text("Quick Entry")
                .font(.title2)
            
            HStack {
                NavigationLink {
                    AddQuickEntryView(entryType: EntryType.mileage)
                } label: {
                    Text("Mileage")
                }
                .buttonStyle(GasupButtonStyle())
                
                NavigationLink {
                    AddQuickEntryView(entryType: EntryType.gas)
                } label: {
                    Text("Gas")
                }
                .buttonStyle(GasupButtonStyle())
            }
        }
    }
}

#Preview {
    QuickEntryView()
}
