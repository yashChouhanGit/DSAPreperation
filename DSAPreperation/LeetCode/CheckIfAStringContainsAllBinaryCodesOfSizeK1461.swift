//
//  CheckIfAStringContainsAllBinaryCodesOfSizeK1461.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 23/02/26.
//

import Foundation

class CheckIfAStringContainsAllBinaryCodesOfSizeK1461 {
    /*func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        guard !s.isEmpty , k > 0 else { return false }
        var results = [""]
        var count = 0
        for _ in 1...k {
            var tempResults = [String]()
            
            for string in results {
                // Take the existing string and branch it
                let first = string + "0"
                if first.count == k {
                    count = count + (s.contains(first) ? 1 : 0)
                }
                tempResults.append(first)
                let second = string + "1"
                if second.count == k {
                    count = count + (s.contains(second) ? 1 : 0)
                }
                tempResults.append(second)
            }
            
            // Replace the old list with the new, doubled list
            results = tempResults
        }
        return count == results.count
    }
    
    func generateBinaryIterative(k: Int) -> [String] {
        var results = [""] // Start with an empty slot
        
        // We do this 'k' times
        for _ in 1...k {
            var tempResults = [String]()
            
            for string in results {
                // Take the existing string and branch it
                tempResults.append(string + "0")
                tempResults.append(string + "1")
            }
            
            // Replace the old list with the new, doubled list
            results = tempResults
        }
        
        return results
    }*/
    
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        // 1. Calculate how many unique codes we need to find (2^k)
        let requiredCount = 1 << k
        
        // 2. Create a Set to store the unique substrings we find
        var seenCodes = Set<String>()
        
        // 3. Convert string to array for faster slicing
        let chars = Array(s)
        
        // 4. If the string is too short to even hold all codes, fail early
        if chars.count < k { return false }
        
        // 5. Slide the window
        for i in 0...(chars.count - k) {
            let start = i
            let end = i + k
            let sub = String(chars[start..<end])
            seenCodes.insert(sub)
            
            // Optimization: If we found them all, stop early!
            if seenCodes.count == requiredCount {
                return true
            }
        }
        
        return false
    }
}
