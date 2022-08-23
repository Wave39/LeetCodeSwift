//
//  Problem26.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

// 26. Remove Duplicates from Sorted Array
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

public class Problem26 {
    public func solve() {
        var testArray = [1,1,2]
        let n1 = removeDuplicates(&testArray)
        print("\(n1), \(testArray) -- should be 2, [1,2,_]")

        testArray = [0,0,1,1,1,2,2,3,3,4]
        let n2 = removeDuplicates(&testArray)
        print("\(n2), \(testArray) -- should be 5, [0,1,2,3,4,_,_,_,_,_]")
    }

    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index1 = 0
        var index2 = 1
        while index2 < nums.count {
            if nums[index1] != nums[index2] {
                index1 += 1
                nums[index1] = nums[index2]
            }
            index2 += 1
        }
        return index1 + 1
    }
}
