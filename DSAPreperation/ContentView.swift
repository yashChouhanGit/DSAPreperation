//
//  ContentView.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 05/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            print("----------")
            print(PrimeNumberOfSetBitsInBinaryRepresentation762().countPrimeSetBits(6, 10))
        }
    }
}

#Preview {
    ContentView()
}
