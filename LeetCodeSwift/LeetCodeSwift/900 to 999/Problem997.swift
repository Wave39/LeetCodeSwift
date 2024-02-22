//
//  Problem997.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/22/24.
//

// 997. Find the Town Judge (Easy)
// https://leetcode.com/problems/find-the-town-judge/

// WOO HOO!!!
// Runtime: 287 ms, Beats 100.00% of users with Swift
// Memory: 16.14 MB, Beats 83.33% of users with Swift

public class Problem997 {
    public func run() {
        let solve1 = findJudge(2, [[1, 2]])
        print("\(solve1) -- should be 2")
        let solve2 = findJudge(3, [[1, 3], [2, 3]])
        print("\(solve2) -- should be 3")
        let solve3 = findJudge(3, [[1, 3], [2, 3], [3, 1]])
        print("\(solve3) -- should be -1")
    }

    public func test(_ n: Int, _ trust: [[Int]]) -> Int {
        return findJudge(n, trust)
    }

    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var trustArray = Array(repeating: (0, 0), count: n)
        for pair in trust {
            trustArray[pair[0] - 1].0 += 1
            trustArray[pair[1] - 1].1 += 1
        }

        for idx in 0..<n {
            if trustArray[idx].0 == 0 && trustArray[idx].1 == (n - 1) {
                return idx + 1
            }
        }

        return -1
    }
}
