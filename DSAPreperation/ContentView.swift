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
            let value = NeetCode150().productExceptSelf([1,2,3,4])
            print("----------\(value)")

           
        }
    }
}

#Preview {
    ContentView()
}
