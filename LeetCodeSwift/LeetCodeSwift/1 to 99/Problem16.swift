//
//  Problem16.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/21/24.
//

// 16. 3Sum Closest (Medium)
// https://leetcode.com/problems/3sum-closest/

public class Problem16 {
    public func run() {
        let solve1 = threeSumClosest([-1, 2, 1, -4], 1)
        print("\(solve1) -- should be 2")
        let solve2 = threeSumClosest([0, 0, 0], 1)
        print("\(solve2) -- should be 0")
        let solve3 = threeSumClosest([1, 1, 1, 1], -100)
        print("\(solve3) -- should be 3")
        let solve4 = threeSumClosest([1, 1, 1, 0], 100)
        print("\(solve4) -- should be 3")
        let solve5 = threeSumClosest([0, 3, 97, 102, 200], 300)
        print("\(solve5) -- should be 300")
    }

    public func test(_ nums: [Int], _ target: Int) -> Int {
        return threeSumClosest(nums, target)
    }

    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var closestTarget = 1_000_000
        for idx in 0..<(nums.count - 2) {
            let arr = Array(nums[(idx + 1)...])
            let arrGoal = target - nums[idx]
            var closestArr = 1_000_000
            for i in 0..<(arr.count - 1) {
                for j in (i + 1)..<arr.count {
                    let x = arr[i] + arr[j]
                    if abs(arrGoal - x) < abs(arrGoal - closestArr) {
                        closestArr = x
                    }
                }
            }

            if abs(target - nums[idx] - closestArr) < abs(target - closestTarget) {
                closestTarget = nums[idx] + closestArr
                if closestTarget == target {
                    return target
                }
            }
        }

        return closestTarget
    }
}
