//
//  NumberOfStepsToReduceANumberInBinaryRepresentationToOne1404.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 26/02/26.
//

import Foundation

class NumberOfStepsToReduceANumberInBinaryRepresentationToOne1404 {
    
    func numSteps(_ s: String) -> Int {
        var steps = 0
        var carry = 0
        let chars = Array(s)
        
        // We go from right to left, stopping before the very first bit
        for i in stride(from: chars.count - 1, to: 0, by: -1) {
            let bit = Int(String(chars[i]))!
            
            if bit + carry == 1 {
                // It's Odd!
                // We need 1 step to add 1, and 1 step to divide.
                steps += 2
                carry = 1 // Adding 1 to an odd number always creates a carry
            } else {
                // It's Even! (Either 0+0 or 1+1)
                // We just need 1 step to divide.
                steps += 1
                // carry remains whatever it was (if bit+carry was 2, carry stays 1)
            }
        }
        
        // Final step: If there's a carry at the end, it means the
        // leftmost '1' became a '10', so we add that final carry step.
        return steps + carry
    }
}
