//
//  Problem2597.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/23/24.
//

// 2597. The Number of Beautiful Subsets (Medium)
// https://leetcode.com/problems/the-number-of-beautiful-subsets/

// https://leetcode.com/problems/the-number-of-beautiful-subsets/solutions/5195247/swift-dp/

public class Problem2597 {
    public func run() {
        let solve1 = beautifulSubsets([2, 4, 6], 2)
        print("\(solve1) -- should be 4")
        let solve2 = beautifulSubsets([1], 1)
        print("\(solve2) -- should be 1")
    }

    public func test(_ nums: [Int], _ k: Int) -> Int {
        return beautifulSubsets(nums, k)
    }

    func beautifulSubsets(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        let lookup = Dictionary(grouping: zip(nums, 0...), by:\.0)
        var dp = Set([0])

        for i in nums.indices  {
            let target = nums[i] - k
            let candidates = lookup[target] ?? []
            for j in dp where candidates.first(where: { (1<<$1) & j != 0}) == nil {
                dp.insert(1<<i | j)
            }
        }

        return dp.count - 1
    }
}
