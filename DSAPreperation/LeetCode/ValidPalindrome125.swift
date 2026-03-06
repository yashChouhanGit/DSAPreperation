//
//  ValidPalindrome125.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 05/03/26.
//

import Foundation

class ValidPalindrome125 {
    // My first approch
//    func isPalindrome(_ s: String) -> Bool {
//        guard s.isEmpty == false else {
//            return false
//        }
//        let sArray = Array(s)
//        var leftIndex = 0
//        let toalCount = sArray.count
//        var rigthIndex = toalCount - 1
//        var palindromCount = 0
//        var lettersIndex: Set<Int> = []
//        
//        while leftIndex < toalCount, rigthIndex >= 0 {
//            
//            
//            let chLeft = sArray[leftIndex]
//            let chRight = sArray[rigthIndex]
//            
//            if (chLeft.isLetter || chLeft.isNumber) {
//                lettersIndex.insert(leftIndex)
//            }
//            
//            if (chLeft.isLetter || chLeft.isNumber), (chRight.isLetter || chRight.isNumber) {
//                let chLeftLowerCase = chLeft.lowercased()
//                let chRightLowerCase = chRight.lowercased()
//                
//                if chLeftLowerCase != chRightLowerCase {
//                    break
//                }
//                palindromCount += 1
//                leftIndex += 1
//                rigthIndex -= 1
//            } else {
//                leftIndex = leftIndex + ((chLeft.isLetter || chLeft.isNumber) ? 0 : 1)
//                rigthIndex = rigthIndex - ((chRight.isLetter || chRight.isNumber) ? 0 : 1)
//            }
//        }
//        return lettersIndex.count == palindromCount
//    }
//    
    
    func isPalindrome(_ s: String) -> Bool {

        let chars = Array(s)
        var left = 0
        var right = chars.count - 1

        while left < right {

            let leftChar = chars[left]
            let rightChar = chars[right]

            if !leftChar.isLetter && !leftChar.isNumber {
                left += 1
                continue
            }

            if !rightChar.isLetter && !rightChar.isNumber {
                right -= 1
                continue
            }

            if leftChar.lowercased() != rightChar.lowercased() {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
