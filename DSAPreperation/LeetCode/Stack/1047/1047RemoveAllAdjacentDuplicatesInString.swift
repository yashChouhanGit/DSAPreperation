//
//  1047RemoveAllAdjacentDuplicatesInString.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 06/02/26.
//

import Foundation

class RemoveAllAdjacentDuplicatesInString {
    
    class Stack<T> {
        var array: [T] = []
        
        func peek() -> T? {
            return array.last
        }
        
        func push(_ value: T) {
            array.append(value)
        }
        
        func isEmpty() -> Bool {
            return array.isEmpty
        }
        
        func pop() -> T? {
            return array.popLast()
        }
    }
    
    
    func removeDuplicates(_ s: String) -> String {
        var output: [Character] = []
        for char in s {
            if output.last == char {
                output.removeLast()
            } else {
                output.append(char)
            }
        }
        return String(output)
    }
}
