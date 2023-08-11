//
//  Problem350.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/22.
//

// 350. Intersection of Two Arrays II (Easy)
// https://leetcode.com/problems/intersection-of-two-arrays-ii/

public class Problem350 {
    public func run() {
        let solve1 = intersect([1, 2, 2, 1], [2, 2])
        print("\(solve1) -- should be [2, 2]")
        let solve2 = intersect([4, 9, 5], [9, 4, 9, 8, 4])
        print("\(solve2) -- should be [4, 9]")
    }

    public func test(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return intersect(nums1, nums2)
    }

    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var retval = [Int]()
        let nums1Dict = Dictionary(nums1.map { ($0, 1) }, uniquingKeysWith: +)
        let nums2Dict = Dictionary(nums2.map { ($0, 1) }, uniquingKeysWith: +)
        var keySet = Set(nums1Dict.keys)
        keySet = keySet.union(nums2Dict.keys)
        for key in keySet {
            if let n1 = nums1Dict[key], let n2 = nums2Dict[key] {
                for _ in 1...min(n1, n2) {
                    retval.append(Int(key))
                }
            }
        }

        return retval.sorted()
    }
}
