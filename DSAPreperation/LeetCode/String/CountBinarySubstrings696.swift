//
//  CountBinarySubstrings696.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 20/02/26.
//

import Foundation


class CountBinarySubstrings696 {
    func countBinarySubstrings(_ s: String) -> Int {
        let chars = Array(s)
        var prevGroup = 0    // Size of the group before
        var currentGroup = 1 // Size of the group we are in now
        var result = 0
        
        for i in 1..<chars.count {
            if chars[i] == chars[i-1] {
                // Still the same character, make the group bigger
                currentGroup += 1
            } else {
                // We hit a change! (0 to 1 or 1 to 0)
                // 1. Add the "pairs" we found from the last two groups
                result += min(prevGroup, currentGroup)
                
                // 2. The current group becomes the "previous" group
                prevGroup = currentGroup
                
                // 3. Reset current group to 1 (for the new character)
                currentGroup = 1
            }
        }
        
        // One last check for the final group at the end of the string
        return result + min(prevGroup, currentGroup)
    }
}
