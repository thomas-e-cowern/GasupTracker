//
//  HomeView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 6/4/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query var totalMiles: [Mileage]
    
    @State var total: Double = 0.0
    
    var body: some View {
        ZStack {
            Color("LightGrey").ignoresSafeArea()
            NavigationStack {
                GeometryReader { geo in
                    ScrollView {
                        VStack {
                            Text("Gasup Tracker")
                                .font(.largeTitle)
                     
                            Image("CarLeaves3")
                                .resizable()
                                .scaledToFit()
                                .frame(height: geo.size.height * 0.38)
                            VStack{
                                Text("Monthly Totals")
                                    .font(.title2)
                                    .padding(.bottom, 10)
                                CardView(title: "Cost", value: "$23.45")
                                CardView(title: "Emissions", value: "21 lb Co2")
                                CardView(title: "Mileage", value: "\(total)")
                            }
                            .frame(height: 200)
                            .padding()
                            
                            QuickEntryView()
                                .padding(.top, 10)
                                .padding(.horizontal, 10)
                        }
                        .onAppear {
                            total = 0.0
                            totalMiles.forEach { mileage in
                                total = total + mileage.miles
                                print(total)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
