//
//  PascalsTriangle118.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 11/02/26.
//


class PascalsTriangle118 {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else {
            return []
        }
        var outerArray: [[Int]] = []
        outerArray.append([1])
        
        for outerIndex in 1..<numRows {
            var innerArray: [Int] = [1]
            let preArray = outerArray[outerIndex-1]
            for innerIndex in 1..<preArray.count {
                let sum = preArray[innerIndex-1] + preArray[innerIndex]
                innerArray.append(sum)
            }
            innerArray.append(1)
            outerArray.append(innerArray)
        }
        return outerArray
    }
}
