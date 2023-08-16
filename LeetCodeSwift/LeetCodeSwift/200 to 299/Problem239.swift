//
//  Problem239.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/16/23.
//

// 239. Sliding Window Maximum (Hard)
// https://leetcode.com/problems/sliding-window-maximum/

public class Problem239 {
    public func run() {
        let solve1 = maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3)
        print("\(solve1) -- should be [3, 3, 5, 5, 6, 7]")
        let solve2 = maxSlidingWindow([1], 1)
        print("\(solve2) -- should be [1]")
    }

    public func test(_ nums: [Int], _ k: Int) -> [Int] {
        return maxSlidingWindow(nums, k)
    }

    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var maxes: [Int] = []

        for idx in 0...(nums.count - k) {
            let slice = nums[idx...idx + k - 1]
            maxes.append(slice.max() ?? 0)
        }

        return maxes
    }
}
