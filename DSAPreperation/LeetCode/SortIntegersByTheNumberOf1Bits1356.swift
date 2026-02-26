//
//  SortIntegersByTheNumberOf1Bits1356.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 25/02/26.
//



class SortIntegersByTheNumberOf1Bits1356 {
    func sortByBits(_ arr: [Int]) -> [Int] {
        return arr.sorted { (a, b) -> Bool in
            let countA = sumOfAll1Bits(a)
            let countB = sumOfAll1Bits(b)
            
            // If bit counts are different, sort by bit count
            if countA != countB {
                return countA < countB
            }
            
            // If bit counts are equal, sort by actual number value
            return a < b
        }
    }
    
    func sumOfAll1Bits(_ n: Int) -> Int {
        var n = n
        var sum = 0
        
        while n > 0 {
            // 1. Check if the current last bit is a 1
            // (n & 1) returns 1 if it's a '1', and 0 if it's a '0'
            sum += (n & 1)
            
            // 2. Shift right to move to the next bit
            n >>= 1
        }
        
        return sum
    }
}
