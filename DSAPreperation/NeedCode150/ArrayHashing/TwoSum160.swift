//
//  TwoSum160.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 24/04/26.
//
extension NeetCode150 {
    func twoSum160(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashMap: [Int: Int] = [:]
        
        
        for object in nums.enumerated() {
            if let index = hashMap[object.element] {
                return [index, object.offset]
            }
            hashMap[target - object.element] = object.offset
        }
        return []
        
    }
}
