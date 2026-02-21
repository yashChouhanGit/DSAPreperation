//
//  PrimeNumberOfSetBitsInBinaryRepresentation762.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 21/02/26.
//

import Foundation


class PrimeNumberOfSetBitsInBinaryRepresentation762 {
    /*func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var primeNumberCount = 0
        for number in left...right {
            let oneBitCount = countOneBit(number: number)
            primeNumberCount = primeNumberCount + isPrimeNumber(number: oneBitCount)
        }
        return primeNumberCount
    }
    
    private func countOneBit(number: Int) -> Int {
        var number = number
        var oneCount = 0
        while number > 0 {
            oneCount = oneCount + (number % 2)
            number = number / 2
        }
        return oneCount
    }
    
    private func isPrimeNumber(number: Int) -> Int {
        guard number > 2 else {
            return number <= 1 ? 0 : 1
        }
        for divisor in 2..<number {
            if number % divisor == 0 {
                return 0
            }
        }
        return 1
    }
    */
    
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
            // We only care about primes up to 20 because 2^20 > 1,000,000
            let primes: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19]
            var primeNumberCount = 0
            
            for number in left...right {
                // Checking a Set is much faster than a for-loop divisor check
                if primes.contains(number.nonzeroBitCount) {
                    primeNumberCount += 1
                }
            }
            
            return primeNumberCount
        }
}
