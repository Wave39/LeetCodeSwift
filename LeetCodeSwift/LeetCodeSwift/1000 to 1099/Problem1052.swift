//
//  Problem1052.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/21/24.
//

// 1052. Grumpy Bookstore Owner (Medium)
// https://leetcode.com/problems/grumpy-bookstore-owner/

// https://leetcode.com/problems/grumpy-bookstore-owner/solutions/5347493/swift-time-o-n-space-o-1/

public class Problem1052 {
    public func run() {
        let solve1 = maxSatisfied([1, 0, 1, 2, 1, 1, 7, 5], [0, 1, 0, 1, 0, 1, 0, 1], 3)
        print("\(solve1) -- should be 16")
        let solve2 = maxSatisfied([1], [0], 1)
        print("\(solve2) -- should be 1")
        let solve3 = maxSatisfied([4, 10, 10], [1, 1, 0], 2)
        print("\(solve3) -- should be 24")
    }

    public func test(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        return maxSatisfied(customers, grumpy, minutes)
    }

    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        var left = 0
        var window = 0
        var maxWindow = 0
        var satisfied = 0

        for right in 0..<customers.count {
            if grumpy[right] == 1 {
                window += customers[right]
            } else {
                satisfied += customers[right]
            }

            if (right - left + 1) > minutes {
                if grumpy[left] == 1 {
                    window -= customers[left]
                }

                left += 1
            }

            maxWindow = max(maxWindow, window)
        }

        return satisfied + maxWindow
    }

    func maxSatisfied_naive(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        func getHappiness(_ customers: [Int], _ indices: [Int]) -> Int {
            var retval = 0
            for happyIndex in indices {
                retval += customers[happyIndex]
            }

            return retval
        }

        var retval = 0

        for idx in 0...(customers.count - minutes) {
            let happyIndices1 = grumpy.indices.filter { grumpy[$0] == 0 && ($0 < idx || $0 > (idx + minutes - 1)) }.map { Int($0) }
            let happyIndices2 = Array(idx..<(idx + minutes))
            let happiness = getHappiness(customers, happyIndices1) + getHappiness(customers, happyIndices2)
            if happiness > retval {
                retval = happiness
            }

            print(idx, happyIndices1, happyIndices2, happiness, retval)
        }

        return retval
    }
}
