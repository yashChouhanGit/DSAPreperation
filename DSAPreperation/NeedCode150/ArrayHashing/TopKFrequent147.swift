//
//  TopKFrequent147.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 29/04/26.
//

extension NeetCode150 {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        var map: [Int: Int] = [:]
//        for key in nums {
//            map[key, default: 0] = (map[key] ?? 0) + 1
//        }
//        
//        var array: [Int] = []
//        var maxValue: Int = .min
//        var keyMax: Int = .min
//        
//        while map.isEmpty == false {
//            for (key,value) in map {
//                if maxValue < value  {
//                    maxValue = value
//                    keyMax = key
//                }
//            }
//            array.append(keyMax)
//            maxValue = .min
//            map.removeValue(forKey: keyMax)
//            if array.count == k {
//                return array
//            }
//        }
//        
//        return array
//    }
    
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]
        
        for num in nums {
            freq[num, default: 0] += 1
        }
        
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        
        for (num, count) in freq {
            buckets[count].append(num)
        }
        
        var result: [Int] = []
        
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            for num in buckets[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        
        return result
    }
}
