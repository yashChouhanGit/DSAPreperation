//
//  ImplementStackUsingQueues225.swift
//  DSAPreperation
//
//  Created by Yash Chouhan on 18/02/26.
//


class ImplementStackUsingQueues225 {
    
    class MyStack {
        var queue: [Int] = []

        func push(_ x: Int) {
            queue.append(x) // Enqueue
            
            // Rotate the queue so the new element is at the front
            // We do this for all elements EXCEPT the one we just added
            for _ in 0..<queue.count - 1 {
                let removedElement = queue.removeFirst()
                queue.append(removedElement)
            }
        }

        func pop() -> Int {
            return queue.removeFirst() // Now acts like a Stack Pop
        }

        func top() -> Int {
            return queue.first ?? 0
        }

        func empty() -> Bool {
            return queue.isEmpty
        }
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
