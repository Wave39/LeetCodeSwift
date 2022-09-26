//
//  Problem232.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/25/22.
//

// 232. Implement Queue using Stacks
// https://leetcode.com/problems/implement-queue-using-stacks/

public class Problem232 {
    public func run() {
        let queue1 = MyQueue()
        var results1 = [Any]()
        queue1.push(1)
        queue1.push(2)
        results1.append(queue1.peek())
        results1.append(queue1.pop())
        results1.append(queue1.empty())
        print("\(results1) -- should be [1, 1, false]")
    }

    class MyQueue {
        var arr: [Int]!
        init() {
            arr = [Int]()
        }

        func push(_ x: Int) {
            arr.append(x)
        }

        func pop() -> Int {
            return arr.removeFirst()
        }

        func peek() -> Int {
            return arr.first!
        }

        func empty() -> Bool {
            return arr.isEmpty
        }
    }
}
