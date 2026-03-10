//
//  containsDuplicate.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 11/03/26.
//

import Foundation


//func containsDuplicate(input: [Int]) -> Bool {
//    var dict: [Int: Int] = [:]
//    
//    for index in input.indices {
//        if dict[input[index]] == nil {
//            dict[input[index]] = index
//        } else {
//            return true
//        }
//    }
//    return false
//}


func containsDuplicate(_ nums: [Int]) -> Bool {
    var set = Set<Int>()

    for num in nums {
        if set.contains(num) {
            return true
        }

        set.insert(num)
    }

    return false
}
