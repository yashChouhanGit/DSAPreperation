//
//  1544MakeTheStringGreat.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 06/02/26.
//

import Foundation

class MakeTheStringGreat {
    func makeGood1(_ s: String) -> String {
        var output: [Character] = []
        for char in s {
            if let last = output.last, last != char, (last.uppercased() == String(char) || String(last) == char.uppercased()) {
                output.removeLast()
            } else {
                output.append(char)
            }
        }
        return String(output)
    }
    
    func makeGood2(_ s: String) -> String {
        var output: [Character] = []
        for char in s {
            let diff = Int(char.asciiValue ?? 0) - Int(output.last?.asciiValue ?? 0) 
            if abs(diff) == 32  {
                output.removeLast()
            } else {
                output.append(char)
            }
        }
        return String(output)
    }

    func makeGood(_ s: String) -> String {
        var stack = [Character]() // space: O(n)
        
        for char in s { // time: O(n)
            if let lastValue = stack.last?.asciiValue,
               let charValue = char.asciiValue,
               abs(Int(lastValue) - Int(charValue)) == 32 // diff between A an a or a and A etc
            {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }
        return String(stack)
    }
}
