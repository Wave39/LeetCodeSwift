//
//  Problem622.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/24/22.
//

// 622. Design Circular Queue
// https://leetcode.com/problems/design-circular-queue/

public class Problem622 {
    public func run() {
        var results1 = [Any]()
        let queue1 = MyCircularQueue(3)
        results1.append(queue1.enQueue(1))
        results1.append(queue1.enQueue(2))
        results1.append(queue1.enQueue(3))
        results1.append(queue1.enQueue(4))
        results1.append(queue1.Rear())
        results1.append(queue1.isFull())
        results1.append(queue1.deQueue())
        results1.append(queue1.enQueue(4))
        results1.append(queue1.Rear())
        print("\(results1) -- should be [true, true, true, false, 3, true, true, true, 4]")
    }

    class MyCircularQueue {
        var arr: [Int]!
        var arrSize: Int!

        init(_ k: Int) {
            arr = [Int]()
            arrSize = k
        }

        func enQueue(_ value: Int) -> Bool {
            if arr.count == arrSize {
                return false
            }

            arr.append(value)
            return true
        }

        func deQueue() -> Bool {
            if arr.isEmpty {
                return false
            }

            arr.removeFirst()
            return true
        }

        func Front() -> Int {
            if arr.isEmpty {
                return -1
            }

            return arr.first!
        }

        func Rear() -> Int {
            if arr.isEmpty {
                return -1
            }

            return arr.last!
        }

        func isEmpty() -> Bool {
            return arr.isEmpty
        }

        func isFull() -> Bool {
            return arr.count == arrSize
        }
    }
}
