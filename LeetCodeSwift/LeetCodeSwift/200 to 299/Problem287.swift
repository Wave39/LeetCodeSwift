//
//  Problem287.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/23.
//

// 287. Find the Duplicate Number (Medium)
// https://leetcode.com/problems/find-the-duplicate-number/

// The description of the problem gives the ranges a closed loop, which lends itself to a search
// similar to finding a loop in a linked list.
// https://leetcode.com/problems/find-the-duplicate-number/solutions/543300/swift-solution-with-explanation/

public class Problem287 {
    public func run() {
        let solve1 = findDuplicate([1, 3, 4, 2, 2])
        print("\(solve1) -- should be 2")
        let solve2 = findDuplicate([3, 1, 3, 4, 2])
        print("\(solve2) -- should be 3")
        let solve3 = findDuplicate([1, 1])
        print("\(solve3) -- should be 1")
    }

    public func test(_ nums: [Int]) -> Int {
        return findDuplicate(nums)
    }

    func findDuplicate(_ nums: [Int]) -> Int {
        let intersectionIndex = findIntersectionIndex(nums)
        return findStartIndex(nums, intersectionIndex)
    }

    private func findIntersectionIndex(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[0]

        repeat {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while slow != fast

        return slow
    }

    private func findStartIndex(_ nums: [Int], _ intersection: Int) -> Int {
        var slow = nums[0]
        var fast = intersection

        while slow != fast {
            slow = nums[slow]
            fast = nums[fast]
        }

        return slow
    }

    func findDuplicate_naive(_ nums: [Int]) -> Int {
        let ctr = nums.count
        if ctr == 2 {
            return nums.last!
        }

        for outerIdx in 0...(ctr - 3) {
            for innerIdx in (outerIdx + 1)...(ctr - 1) {
                if nums[outerIdx] == nums[innerIdx] {
                    return nums[outerIdx]
                }
            }
        }

        return nums.last!
    }
}
