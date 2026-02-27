//
//  TwoSum1.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 27/02/26.
//


class TwoSum1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Dictionary to store: [Value: Index]
        var dict = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            let complement = target - value
            
            // Check if the "partner" number is already in our dictionary
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            
            // If not, store the current number and its index
            dict[value] = index
        }
        
        return []
    }
}
