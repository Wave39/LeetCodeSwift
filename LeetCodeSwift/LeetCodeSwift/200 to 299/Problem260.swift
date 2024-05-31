//
//  Problem260.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/31/24.
//

// 260. Single Number III (Medium)
// https://leetcode.com/problems/single-number-iii/

public class Problem260 {
    public func run() {
        let solve1 = singleNumber([1, 2, 1, 3, 2, 5])
        print("\(solve1) -- should be [3, 5]")
        let solve2 = singleNumber([-1, 0])
        print("\(solve2) -- should be [-1, -0]")
        let solve3 = singleNumber([0, 1])
        print("\(solve3) -- should be [0, 1]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return singleNumber(nums)
    }

    func singleNumber(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }

        return dict.keys.filter { dict[$0] == 1 }.sorted()
    }
}
