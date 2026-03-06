//
//  SingleNumber136.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 06/03/26.
//

import Foundation

class SingleNumber136 {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict: [Int: Int?] = [:]
        for num in nums {
            if dict[num] != nil {
                dict[num] = nil
                continue
            }
            dict[num] = 1
        }
        return dict.first?.key ?? 0
    }
}
