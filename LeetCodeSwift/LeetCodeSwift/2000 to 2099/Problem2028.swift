//
//  Problem2028.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/24.
//

// 2028. Find Missing Observations (Medium)
// https://leetcode.com/problems/find-missing-observations/

public class Problem2028 {
    public func run() {
        let solve1 = missingRolls([3, 2, 4, 3], 4, 2)
        print("\(solve1) -- should be [6, 6]")
        let solve2 = missingRolls([1, 5, 6], 3, 4)
        print("\(solve2) -- should be [2, 3, 2, 2]")
        let solve3 = missingRolls([1, 2, 3, 4], 6, 4)
        print("\(solve3) -- should be []")
    }

    public func test(_ rolls: [Int], _ mean: Int, _ n: Int) -> [Int] {
        return missingRolls(rolls, mean, n)
    }

    func missingRolls(_ rolls: [Int], _ mean: Int, _ n: Int) -> [Int] {
        let currentSum = rolls.reduce(0, +)
        let targetSum = (rolls.count + n) * mean
        var missingSum = targetSum - currentSum
        if missingSum < n || missingSum > n * 6 {
            return []
        }

        var retval = [Int]()
        for idx in 0..<n {
            let roll = missingSum / (n - idx)
            retval.append(roll)
            missingSum -= roll
        }

        return retval
    }
}
