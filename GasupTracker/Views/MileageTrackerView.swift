//
//  MileageTrackerView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/3/24.
//

import SwiftUI
import SwiftData

struct MileageTrackerView: View {
    
    @Environment(\.modelContext) var modelContext
    
    @Query var mileageList: [Mileage]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(mileageList) { mileage in
                    VStack(alignment: .leading) {
                        Text(String(format: "%0.2f", mileage.miles) + " miles")
                        Text(mileage.date, style: .date)
                    }
                }
            }
            .navigationTitle("Mileage")
            .toolbar {
                Button("Add Sample Mileage") {
                    addSampleMileage()
                }
            }
        }
    }
    
    func addSampleMileage() {
        let entry1 = Mileage(miles: 123.5, date: Date.now)
        let entry2 = Mileage(miles: 55.2, date: Date.now.addingTimeInterval(86400))
        let entry3 = Mileage(miles: 327.9, date: Date.now.addingTimeInterval(172800))
        
        modelContext.insert(entry1)
        modelContext.insert(entry2)
        modelContext.insert(entry3)
    }
}

#Preview {
    MileageTrackerView()
}
