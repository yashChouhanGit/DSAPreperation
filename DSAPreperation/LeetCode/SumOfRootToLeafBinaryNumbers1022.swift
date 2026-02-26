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
        return dfs(root, 0)
    }
    
    private func dfs(_ node: TreeNode?, _ currentSum: Int) -> Int {
        // 1. Base case: If the node is empty
        guard let node = node else { return 0 }
        
        // 2. The Formula: Shift left and add the current bit
        let nextSum = (currentSum << 1) | node.val
        
        // 3. If it's a leaf node, we've finished one binary number
        if node.left == nil && node.right == nil {
            return nextSum
        }
        
        // 4. Otherwise, keep going down left and right and sum them up
        return dfs(node.left, nextSum) + dfs(node.right, nextSum)
    }
}
