//
//  Problem724.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

// 724. Find Pivot Index
// https://leetcode.com/problems/find-pivot-index/

public class Problem724 {
    public func run() {
        let solve1 = pivotIndex([1, 7, 3, 6, 5, 6])
        print("\(solve1) -- should be 3")
        let solve2 = pivotIndex([1, 2, 3])
        print("\(solve2) -- should be -1")
        let solve3 = pivotIndex([2, 1, -1])
        print("\(solve3) -- should be 0")
        let solve4 = pivotIndex([-1, -1, -1, 1, 1, 1])
        print("\(solve4) -- should be -1")
    }

    public func test(_ nums: [Int]) -> Int {
        return pivotIndex(nums)
    }

    func pivotIndex(_ nums: [Int]) -> Int {
        for idx in 0..<nums.count {
            let idx1 = idx + 1
            let leftNums = Array(nums[...(idx1 - 2)])
            let rightNums = Array(nums[idx1...])
            if leftNums.reduce(0, +) == rightNums.reduce(0, +) {
                return idx
            }
        }
        
        return -1
    }
}
