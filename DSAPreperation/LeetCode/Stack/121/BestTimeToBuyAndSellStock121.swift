//
//  BestTimeToBuyAndSellStock121.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 16/02/26.
//

import Foundation

//typealias MaxPriceAndDay = (price: Int, day: Int)

class BestTimeToBuyAndSellStock121 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice: Int = .max
        for priceIndex in 0..<prices.count {
            if minPrice > prices[priceIndex] {
                minPrice = prices[priceIndex]
            }
            
            if (prices[priceIndex] - minPrice) > maxProfit {
                maxProfit = prices[priceIndex] - minPrice
            }
        }
        return maxProfit
    }
}
