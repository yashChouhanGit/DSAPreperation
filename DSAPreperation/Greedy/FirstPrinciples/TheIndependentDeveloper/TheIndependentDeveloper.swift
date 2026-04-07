//
//  TheIndependentDeveloper.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 12/03/26.
//

import Foundation


func theIndependentDeveloper(timeInterval: [[Int]]) -> Int {
    
    var numberOfTimeIntervals: Int = 0
    var lastInterval: [Int] = []
    
    for interval in timeInterval {
        
        guard let first = interval.first, let last = interval.last else {
            return numberOfTimeIntervals
        }
        let currentDifference = last - first
        
        if lastInterval.isEmpty {
            lastInterval = interval
            numberOfTimeIntervals += 1
        } else if let lastIntervalFirst = lastInterval.first,
                  let lastIntervalLast = lastInterval.last,
                  lastIntervalLast >= first, currentDifference <= (lastIntervalLast - lastIntervalFirst) {
            lastInterval = interval
        } else {
            numberOfTimeIntervals += 1
        }
    }
    return numberOfTimeIntervals
}
