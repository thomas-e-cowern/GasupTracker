//
//  HomeView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 6/4/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("LightGrey").ignoresSafeArea()
            VStack {
                VStack {
                    Text("Gasup Tracker")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    Text("Quick Entry")
                        .font(.title2)
                }
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
                .padding(10)
            }
            
        }
    }
}

#Preview {
    HomeView()
}
