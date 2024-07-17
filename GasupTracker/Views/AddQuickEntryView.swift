//
//  AddQuickEntryView.swift
//  GasupTracker
//
//  Created by Thomas Cowern on 7/17/24.
//

import SwiftUI

enum EntryType {
    case mileage
    case gas
}

struct AddQuickEntryView: View {
    
    @State var entryType: EntryType? = EntryType.mileage
    
    
    var body: some View {
        switch entryType {
        case .mileage:
            MileageEntryView()
        case .gas:
            GasEntryView()
        case .none:
            EmptyView()
        }
    }
}

struct MileageEntryView: View {
    
    @State private var mileage: Double = 0.0
    
    var body: some View {
        VStack {
            Text("Enter miles below")
            TextField("Mileage", value: $mileage, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.green)
                .keyboardType(.decimalPad)
        }
        .padding()
    }
}

struct GasEntryView: View {
    
    @State private var cost: Double = 0.0
    
    var body: some View {
        VStack {
            Text("Enter gas total price below")
            TextField("Gas cost", value: $cost, format: .currency(code: "USD"))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.green)
                .keyboardType(.decimalPad)
        }
        .padding()
    }
}

#Preview {
    AddQuickEntryView(entryType: EntryType.mileage)
}
