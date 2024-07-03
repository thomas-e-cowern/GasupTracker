//
//  GasupButtonStyle.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/3/24.
//

import Foundation
import SwiftUI

struct GasupButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
            .frame(maxWidth: .infinity)
                .padding()
                .background(Color("EcoGreen"))
                .foregroundStyle(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
}
