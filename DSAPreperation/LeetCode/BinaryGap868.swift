//
//  BinaryGap868.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 22/02/26.
//

import Foundation

class BinaryGap868 {
    /*func binaryGap(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        var n = n
        var maximumGap = 0
        var count = 0
        var lastValue: Int = 0
        while n > 0 {
            let reminder = n % 2
            count += 1
            if reminder == 1 {
                if lastValue == 0 {
                    lastValue = count
                } else {
                    let result = count - lastValue
                    maximumGap = max(maximumGap, result)
                    lastValue = count
                }
            }
            n = n / 2
        }
        return maximumGap
    }*/
    
    func binaryGap(_ n: Int) -> Int {
        var n = n
        var maxGap = 0
        var lastPos: Int? = nil // Using Optional is cleaner for "not found yet"
        var currentPos = 0
        
        while n > 0 {
            // Use Bitwise AND to check if the last bit is 1
            if (n & 1) == 1 {
                if let last = lastPos {
                    maxGap = max(maxGap, currentPos - last)
                }
                lastPos = currentPos
            }
            
            // Use Bitwise Right Shift to move to the next bit
            n >>= 1
            currentPos += 1
        }
        
        return maxGap
    }
    
    
}
