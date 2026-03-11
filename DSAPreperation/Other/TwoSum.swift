//
//  TwoSum.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 11/03/26.
//

import Foundation


//func twoSum(input: [Int], target: Int) -> [Int] {
//    var dict: [Int: Int] = [:]
//    
//    for index in input.indices {
//        
//        if let oldIndex = dict[input[index]] {
//           return [oldIndex, index]
//        }
//        dict[target - input[index]] = index
//    }
//    return []
//}


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: [Int: Int] = [:]

    for (index, num) in nums.enumerated() {
        let complement = target - num

        if let found = map[complement] {
            return [found, index]
        }

        map[num] = index
    }

    return []
}
