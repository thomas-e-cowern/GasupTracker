//
//  CardView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/5/24.
//

import SwiftUI

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.lightGrey)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 4)
    }
}

struct CardView: View {
    
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            Text(value)
                .font(.subheadline)
        }
        .padding(30)
        .frame(width: .infinity)
        .cardBackground()
    }
}

#Preview {
    CardView(title: "Emissions", value: "20lb C02")
}
