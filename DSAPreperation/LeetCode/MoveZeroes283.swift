//
//  MoveZeroes283.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 03/03/26.
//


class MoveZeroes283 {
    // ordinary
    func moveZeroes(_ nums: inout [Int]) {
        var arrayNonZero: [Int] = []
        var arrayZero: [Int] = []
        for i in 0..<nums.count {
            if nums[i] == 0 {
                arrayZero.append(0)
            } else {
                arrayNonZero.append(nums[i])
            }
        }
        nums = arrayNonZero + arrayZero
    }
    
//    func moveZeroes(_ nums: inout [Int]) {
//        var index = 0
//        for i in 0..<nums.count {
//            if nums[i] != 0, i != index {
//                nums.insert(nums[i], at: index)
//                nums[i] = 0
//                index += 1
//            }
//        }
//    }
}
