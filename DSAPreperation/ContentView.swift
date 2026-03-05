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
            //var num = [0,1,0,3,12]
            //var num = [2,1]

           // let valid = ValidPalindrome125().isPalindrome("A man, a plan, a canal: Panama")
            let valid = ValidPalindrome125().isPalindrome("0P")

            print(valid)
        }
    }
}

#Preview {
    ContentView()
}
