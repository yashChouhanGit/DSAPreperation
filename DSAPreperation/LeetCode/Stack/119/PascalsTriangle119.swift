//
//  PascalsTriangle119.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 12/02/26.
//


class PascalsTriangle119 {
    func getRow(_ rowIndex: Int) -> [Int] {
        guard rowIndex >= 0 else {
            return []
        }
        if rowIndex == 0 {
            return [1]
        }
        var lastElement = rowIndex
        var row: [Int] = [1, rowIndex]
        
        var actualRunIndex = rowIndex / 2
        actualRunIndex = max(actualRunIndex,1)
        for i in 1..<actualRunIndex {
            var c = lastElement
            let k = i
            let n = rowIndex
            
            c = (c * (n - k)) / (k + 1)
            
            lastElement = c
            
            row.append(c)
        }
        let newIndex = (rowIndex + 1) / 2
        if rowIndex > 1 {
            for i in 0..<newIndex {
                row.append(row[newIndex - 1 - i])
            }
        }
        return row
    }
}
