//
//  Problem912.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/25/24.
//

// 912. Sort an Array (Medium)
// https://leetcode.com/problems/sort-an-array/

// https://en.wikipedia.org/wiki/Insertion_sort

public class Problem912 {
    public func run() {
        let solve1 = sortArray([5, 2, 3, 1])
        print("\(solve1) -- should be [1, 2, 3, 5]")
        let solve2 = sortArray([5, 1, 1, 2, 0, 0])
        print("\(solve2) -- should be [0, 0, 1, 1, 2, 5]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return sortArray(nums)
    }

    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        var i = 1
        while i < nums.count {
            var j = i
            while j > 0 && nums[j - 1] > nums[j] {
                nums.swapAt(j, j - 1)
                j -= 1
            }

            i += 1
        }

        return nums
    }
}
