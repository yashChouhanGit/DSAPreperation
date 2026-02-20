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
            //print(BestTimeToBuyAndSellStock121().maxProfit([7,1,5,3,6,4]))
            print("----------")
            print(BinaryWatch401().readBinaryWatch(3))
        }
    }
}

#Preview {
    ContentView()
}
