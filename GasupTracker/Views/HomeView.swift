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
            VStack( alignment: .center) {
                VStack {
                    Text("Gasup Tracker")
                        .font(.largeTitle)
                    
                    Spacer()
                
                    VStack{
                        CardView(title: "Cost", value: "$23.45")
                        CardView(title: "Emissions", value: "$23.45")
                        CardView(title: "Mileage", value: "$23.45")
                    }
                    .frame(height: 200)
                    .padding()
                    
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
