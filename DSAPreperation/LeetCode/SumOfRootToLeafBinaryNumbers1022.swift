//
//  SumOfRootToLeafBinaryNumbers1022.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 25/02/26.
//

import Foundation


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */



class SumOfRootToLeafBinaryNumbers1022 {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        
        
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
    
    
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        
        (root?.val ?? 0) + (root?.left?.val ?? 0) + (root?.right?.val ?? 0) + (root?.left?.left?.val ?? 0) + (root?.right?.right?.val ?? 0)
        
        
        var count = 0
        let rootVal = root?.val ?? 0
        let leftVal = root?.left?.val ?? 0
        let rightVal = root?.right?.val ?? 0
        
        sum = sum = (1 << count) * rootVal
        
        
        
    }
}
