//
//  Problem719.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/14/24.
//

// 719. Find K-th Smallest Pair Distance (Hard)
// https://leetcode.com/problems/find-k-th-smallest-pair-distance/

// https://leetcode.com/problems/find-k-th-smallest-pair-distance/solutions/5634002/swift/

public class Problem719 {
    public func run() {
        let solve1 = smallestDistancePair([1, 3, 1], 1)
        print("\(solve1) -- should be 0")
        let solve2 = smallestDistancePair([1, 1, 1], 2)
        print("\(solve2) -- should be 0")
        let solve3 = smallestDistancePair([1, 6, 1], 3)
        print("\(solve3) -- should be 5")
    }

    public func test(_ nums: [Int], _ k: Int) -> Int {
        return smallestDistancePair(nums, k)
    }

    func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        let n = nums.count
        var low = 0
        var high = nums[n - 1] - nums[0]
        while low < high {
            let mid = (low + high) / 2
            var count = 0
            var left = 0
            for right in 0..<n {
                while nums[right] - nums[left] > mid {
                    left += 1
                }

                count += right - left
            }

            if count >= k {
                high = mid
            } else {
                low = mid + 1
            }
        }

        return low
    }
}
