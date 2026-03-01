//
//  RemoveDuplicatesFromSortedArray26.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 01/03/26.
//

import Foundation

class RemoveDuplicatesFromSortedArray26  {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var nonDuplicateArray: [Int] = [nums[0]]
        for index in 1..<nums.count {
            if let last = nonDuplicateArray.last, nums[index] != last {
                nonDuplicateArray.append(nums[index])
            }
        }
        nums = nonDuplicateArray
        return nonDuplicateArray.count
    }
}
