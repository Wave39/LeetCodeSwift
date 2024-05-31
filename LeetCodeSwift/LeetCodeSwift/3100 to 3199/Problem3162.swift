//
//  Problem3162.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/31/24.
//

// 3162. Find the Number of Good Pairs I (Easy)
// https://leetcode.com/problems/find-the-number-of-good-pairs-i/

public class Problem3162 {
    public func run() {
        let solve1 = numberOfPairs([1, 3, 4], [1, 3, 4], 1)
        print("\(solve1) -- should be 5")
        let solve2 = numberOfPairs([1, 2, 4, 12], [2, 4], 3)
        print("\(solve2) -- should be 2")
    }

    public func test(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        return numberOfPairs(nums1, nums2, k)
    }

    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        var retval = 0
        for i in nums1 {
            for j in nums2 {
                if i % (j * k) == 0 {
                    retval += 1
                }
            }
        }

        return retval
    }
}
