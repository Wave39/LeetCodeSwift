//
//  Problem704.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/8/22.
//

// 704. Binary Search
// https://leetcode.com/problems/binary-search/

public class Problem704 {
    public func run() {
        let solve1 = search([-1, 0, 3, 5, 9, 12], 9)
        print("\(solve1) -- should be 4")
        let solve2 = search([-1, 0, 3, 5, 9, 12], 2)
        print("\(solve2) -- should be -1")
        let solve3 = search([2, 5], 0)
        print("\(solve3) -- should be -1")
        let solve4 = search([2, 5], 9)
        print("\(solve4) -- should be -1")
        let solve5 = search([5], 5)
        print("\(solve5) -- should be 0")
        let solve6 = search([2, 5], 5)
        print("\(solve6) -- should be 1")
    }

    public func test(_ nums: [Int], _ target: Int) -> Int {
        return search(nums, target)
    }

    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 1 {
            return nums[0] == target ? 0 : -1
        }

        var low = 0
        var high = nums.count - 1
        while low != high {
            if high < low {
                return -1
            }

            let index = (low + high) / 2
            if nums[index] == target {
                return index
            } else if nums[index] > target {
                high = index - 1
            } else {
                low = index + 1
            }
        }

        if nums[low] == target {
            return low
        }

        return -1
    }
}
