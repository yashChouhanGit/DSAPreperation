//
//  SpecialBinaryString761.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 21/02/26.
//

import Foundation

class SpecialBinaryString761 {
    /*func makeLargestSpecial1(_ s: String) -> String {
        var s = s
        var firstString = ""
        var lastString = ""
        var count = 0
        var subStrings: [String] = []
        var wholeSeriesCount = 0
        for i in s {
            var localSAtring = ""
            if s == "1" {
                count += 1
                wholeSeriesCount += 1
                localSAtring += String(i)
            }
            if s == "0" && count > 0 {
                count -= 1
                wholeSeriesCount -= 1
                localSAtring += String(i)
                if count == 0 {
                    subStrings = [localSAtring]
                    localSAtring = ""
                }
            }
        }
        
        if wholeSeriesCount > 0 {
            firstString = String(s.removeFirst())
            lastString = String(s.removeLast())
            makeLargestSpecial(s)
        }
    }
    
    func subStringWithBoaundry(s: String, leftBoundry: String, rightBoundry: String) {
        
        var s = s
        var firstString = ""
        var lastString = ""
        var count = 0
        var subStrings: [String] = []
        var wholeSeriesCount = 0
        
        
        for i in s {
            var localSubtring = ""
            if s == "1" {
                count += 1
                wholeSeriesCount += 1
                localSubtring += String(i)
            }
            if s == "0" && count > 0 {
                count -= 1
                wholeSeriesCount -= 1
                localSAtring += String(i)
                if count == 0 {
                    subStrings = [localSAtring]
                    localSubtring = ""
                }
            }
        }
        
        if wholeSeriesCount > 0 {
            localSubtring = ""
            
            firstString = s.removeFirst() ?? ""
            lastString = s.removeFirst() ?? ""
            
        }
          
    }
    */
    class Solution {
        func makeLargestSpecial(_ s: String) -> String {
            var count = 0
            var i = 0
            var blocks = [String]()
            
            // We convert to an array of characters for easier indexing
            let chars = Array(s)
            
            for (j, char) in chars.enumerated() {
                // Counter Rule: +1 for '1', -1 for '0'
                count += (char == "1" ? 1 : -1)
                
                // When count hits 0, we found a "Special" neighbor
                if count == 0 {
                    // 1. Identify the inner part (the filling)
                    let start = i + 1
                    let end = j - 1
                    
                    var innerPart = ""
                    if start <= end {
                        innerPart = String(chars[start...end])
                    }
                    
                    // 2. Recursively sort the inside, then add the '1' and '0' back
                    let sortedInner = makeLargestSpecial(innerPart)
                    blocks.append("1" + sortedInner + "0")
                    
                    // 3. Move the pointer to the start of the next potential block
                    i = j + 1
                }
            }
            
            // Sort all found blocks from largest to smallest
            blocks.sort(by: >)
            
            // Join them back into one string
            return blocks.joined()
        }
    }
}
