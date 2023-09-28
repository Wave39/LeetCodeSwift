//
//  Problem905.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/28/23.
//

// 905. Sort Array By Parity (Easy)
// https://leetcode.com/problems/sort-array-by-parity/

public class Problem905 {
    public func run() {
        let solve1 = sortArrayByParity([3, 1, 2, 4])
        print("\(solve1) -- should be [2, 4, 3, 1]")
        let solve2 = sortArrayByParity([0])
        print("\(solve2) -- should be [0]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return sortArrayByParity(nums)
    }

    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        return nums.filter { $0 % 2 == 0 } + nums.filter { $0 % 2 != 0 }
    }
}
