//
//  QuickEntryView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/5/24.
//

import SwiftUI

struct QuickEntryView: View {
    var body: some View {
        Text("Quick Entry")
            .font(.title2)
        
        HStack {
            Button {
                // Quick entry mileage
            } label: {
                Text("Mileage")
            }
            .buttonStyle(GasupButtonStyle())
            
            Button {
                // Quick entry gas
            } label: {
                Text("Gas")
            }
            .buttonStyle(GasupButtonStyle())
        }
    }
}

#Preview {
    QuickEntryView()
}
