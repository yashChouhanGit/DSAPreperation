//
//  GasFuel.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 12/03/26.
//

import Foundation

func canReachEnd(gas: [Int]) -> Bool {
    guard !gas.isEmpty else { return false }
    
    var maxReach = 0
    
    for (currentIndex, fuelAtStation) in gas.enumerated() {
        // 1. If the current station is beyond our maxReach, we're stranded in the desert.
        if currentIndex > maxReach {
            return false
        }
        
        // 2. Greedy Choice: Can this station's fuel push our horizon further?
        maxReach = max(maxReach, currentIndex + fuelAtStation)
        
        // 3. Early Exit: If we can already see the finish line, stop driving!
        if maxReach >= gas.count - 1 {
            return true
        }
    }
    
    return maxReach >= gas.count - 1
}
