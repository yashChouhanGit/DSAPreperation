//
//  1021RemoveOutermostParentheses.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 05/02/26.
//

import Foundation


class RemoveOutermostParentheses_1021 {
    
    class Stack<T> {
        private var stackArray: [T] = []
        
        func push(_ element: T) {
            stackArray.append(element)
        }
        
        func pop() -> T? {
            if isEmpty() {
                return nil
            }
            return stackArray.remove(at: stackArray.count - 1)
        }
        
        func isEmpty() -> Bool {
            return stackArray.isEmpty
        }
        
        //top
        func peek() -> T? {
            if isEmpty() {
                return nil
            }
            return stackArray[stackArray.count - 1]
        }
        
        
    }
    //(()())(())
//    func removeOuterParentheses(_ s: String) -> String {
//        let outerMostLayerStack: Stack<Character> = Stack()
//        let innerLayerStack: Stack<Character> = Stack()
//        for char in s {
//            if char == "(" {
//                if outerMostLayerStack.isEmpty() {
//                    outerMostLayerStack.push(char)
//                } else {
//                    innerLayerStack.push(char)
//                }
//            } else if char == ")" {
//                if !innerLayerStack.isEmpty() {
//                    innerLayerStack.pop()
//                } else if !outerMostLayerStack.isEmpty() {
//                    outerMostLayerStack.pop()
//                } else {
//                    innerLayerStack.push(char)
//                }
//            }
//        }
//        var result = ""
//        while !innerLayerStack.isEmpty() {
//            if let char = innerLayerStack.pop() {
//                result = result + String(char)
//            }
//        }
//        return result
//    }
    
    func removeOuterParentheses(_ s: String) -> String {
        var result: String = ""
        var count = 0
        
        for char in s {
            if char == Character("(") {
                if count != 0 {
                    result += "("
                }
                count += 1
            } else {
                count -= 1
                if count != 1 {
                    result += ")"
                }
            }
        }
        return result
    }
    
    func re6moveOuterParentheses(_ s: String) -> String {
        var level = 0
        var output = ""
        for char in s {
            if char == Character("(") {
                if level != 0 {
                    output += "("
                }
                level += 1
            } else {
                level -= 1
                if level != 0 {
                    output += ")"
                }
            }
        }
        return output
    }
}
//(()(()))
// ()(())
// ()(())
