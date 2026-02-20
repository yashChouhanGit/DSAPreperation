//
//  BinaryNumberWithAlternating693.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 18/02/26.
//


class BinaryNumberWithAlternating693 {
    
//    func hasAlternatingBits(_ n: Int) -> Bool {
//        guard n != 0 else {
//            return true
//        }
//        var n = n
//        var hasAlternatingBits: Bool = false
//        
//        var resultBit: Int? = nil
//        var bitsCout: Int = 0
//        while n != 0 {
//            let bit = n % 2
//            
//            if resultBit == nil {
//                resultBit = bit
//            } else if resultBit == 1 && bit == 0 {
//                resultBit = bit
//                hasAlternatingBits = true
//            } else if resultBit == 0 && bit == 1 {
//                resultBit = bit
//                hasAlternatingBits = true
//            } else {
//                bitsCout = 0
//                hasAlternatingBits = false
//                break
//            }
//            bitsCout += 1
//            n = n / 2
//        }
//        return bitsCout == 1 || hasAlternatingBits
//    }
    
    func hasAlternatingBits(_ n: Int) -> Bool {
           var n = n
           var bit = n & 1 // read first bit

           while n > 0, n & 1 == bit {
               bit = (bit == 1) ? 0 : 1  // flip the bit
               n = n >> 1
           }
           return n == 0
       }
}

