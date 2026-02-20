//
//  BinaryWatch401.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 17/02/26.
//

import Foundation


class BinaryWatch401 {
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var result = [String]()
        
        // 1. Loop through every possible hour
        for h in 0...11 {
            // 2. Loop through every possible minute
            for m in 0...59 {
                // 3. Count how many 1-bits are in 'h' and 'm'
                // .nonzeroBitCount is a built-in way to count '1's in a number
                if h.nonzeroBitCount + m.nonzeroBitCount == turnedOn {
                    // 4. Format the time (Minutes must be 2 digits, like 05)
                    let time = String(format: "%d:%02d", h, m)
                    result.append(time)
                }
            }
        }
        return result
    }
}
