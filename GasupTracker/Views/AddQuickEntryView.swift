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
    var body: some View {
        Text("Mileage entry here")
    }
}

struct GasEntryView: View {
    var body: some View {
        Text("Gas entry here")
    }
}

#Preview {
    AddQuickEntryView(entryType: EntryType.mileage)
}
