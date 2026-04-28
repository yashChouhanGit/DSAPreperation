//
//  Anagram224.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 24/04/26.
//

//s="bbcc"
//t="ccbc"
extension NeetCode150 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var hashMap: [Character: Int] = [:]
        
        for ch in s {
            if let value = hashMap[ch] {
                hashMap[ch] = value + 1
            } else {
                hashMap[ch] = 1
            }
        }
        
        for ch in t {
            if hashMap.isEmpty {
                return false
            }
            if hashMap[ch] == nil {
                return false
            }
            if let value = hashMap[ch] {
                hashMap[ch] = value - 1
            }
            if let value = hashMap[ch], value == 0 {
                hashMap.removeValue(forKey: ch)
            }
        }
        
        return true
    }
}
