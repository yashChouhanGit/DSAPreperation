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
            let value = NeetCode150().longestConsecutive([9,1,4,7,3,-1,0,5,8,-1,6])
            print("----------\(value)")

           
        }
    }
}

#Preview {
    ContentView()
}
