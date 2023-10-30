//
//  Problem561.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/30/23.
//

// 566. Reshape the Matrix (Easy)
// https://leetcode.com/problems/reshape-the-matrix/

public class Problem561 {
    public func run() {
        let solve1 = arrayPairSum([1, 4, 3, 2])
        print("\(solve1) -- should be 4")
        let solve2 = arrayPairSum([6, 2, 6, 5, 1, 2])
        print("\(solve2) -- should be 9")
    }

    public func test(_ nums: [Int]) -> Int {
        return arrayPairSum(nums)
    }

    func arrayPairSum(_ nums: [Int]) -> Int {
        var retval = 0
        let arr = nums.sorted()
        for idx in 0..<arr.count {
            if idx % 2 == 0 {
                retval += arr[idx]
            }
        }

        return retval
    }
}
