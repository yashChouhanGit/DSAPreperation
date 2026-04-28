//
//  HasDuplicate216.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 15/04/26.
//
// [1,2,3,1,2,3]

extension NeetCode150 {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int: Int] = [:]
        
        for n in nums {
            if hashMap[n] != nil {
                return true
            }
            hashMap[n] = n
        }
        return false
    }
}
