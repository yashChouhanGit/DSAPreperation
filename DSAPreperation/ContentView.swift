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
            let value = NeetCode150().twoSum160([-1,-2,-3,-4,-5].reversed(), -8)
            print("----------\(value)")
        }
    }
}

#Preview {
    ContentView()
}
