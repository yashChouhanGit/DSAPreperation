//
//  MaxArea51.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 20/04/26.
//


extension NeetCode150 {
//    func maxArea(_ heights: [Int]) -> Int {
//        var maxArea: Int = 0
//        for i in 0..<heights.count {
//            for j in (i+1)..<heights.count {
//                let min = min(heights[i],heights[j])
//                let value = min * (j - i)
//                if maxArea < value {
//                    maxArea = value
//                }
//            }
//        }
//        
//        return maxArea
//        
//    }
    
//    func maxArea(_ heights: [Int]) -> Int {
//        
//        var left = 0
//        var right = heights.count - 1
//        var maxArea: Int = 0
//        
//        while left < right {
//            let min = min(heights[left], heights[right])
//            let value = min * (right - left)
//            if maxArea < value {
//                maxArea = value
//            }
//
    // Wrrong , height of the bar , not index 
//            if left < right {
//                left += 1
//            } else {
//                right -= 1
//            }
//        }
//        
//        return maxArea
//        
//    }
    
    func maxArea(_ heights: [Int]) -> Int {
        var maxWater = 0
        var left = 0
        var right = heights.count - 1
        
        while left < right {
            // 1. Calculate the width between pointers
            let width = right - left
            
            // 2. Determine the height of the container (the shorter bar)
            let leftHeight = heights[left]
            let rightHeight = heights[right]
            let currentHeight = leftHeight < rightHeight ? leftHeight : rightHeight
            
            // 3. Calculate area and update max if it's the largest found so far
            let currentArea = width * currentHeight
            if currentArea > maxWater {
                maxWater = currentArea
            }
            
            // 4. Move the pointer pointing to the shorter bar
            if leftHeight < rightHeight {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxWater
    }
}
