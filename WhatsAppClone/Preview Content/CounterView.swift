//
//  CounterView.swift
//  WhatsAppClone
//
//  Created by Anton Chornobay on 07.07.2024.
//

import SwiftUI

struct CounterView: View {
    private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button(action: {
                count += 1
            }) {
                Text("Increment")
            }
        }
    }
}

#Preview {
    CounterView()
}
