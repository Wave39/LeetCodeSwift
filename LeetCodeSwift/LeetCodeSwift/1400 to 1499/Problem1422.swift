//
//  Problem1422.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/22/23.
//

// 1422. Maximum Score After Splitting a String (Easy)
// https://leetcode.com/problems/maximum-score-after-splitting-a-string/

// WOO HOO!!
// Runtime: 0ms, Beats 100.00% of users with Swift
// Memory: 15.67MB, Beats 25.00% of users with Swift

public class Problem1422 {
    public func run() {
        let solve1 = maxScore("011101")
        print("\(solve1) -- should be 5")
        let solve2 = maxScore("00111")
        print("\(solve2) -- should be 5")
        let solve3 = maxScore("1111")
        print("\(solve3) -- should be 3")
    }

    public func test(_ s: String) -> Int {
        return maxScore(s)
    }

    func maxScore(_ s: String) -> Int {
        let arr = Array(s)
        var leftZeroCount = 0
        var leftOneCount = 0
        var rightZeroCount = arr.filter { $0 == "0" }.count
        var rightOneCount = arr.count - rightZeroCount
        var retval = 0
        for idx in 0..<(arr.count - 1) {
            if arr[idx] == "0" {
                leftZeroCount += 1
                rightZeroCount -= 1
            } else {
                leftOneCount += 1
                rightOneCount -= 1
            }

            if leftZeroCount + rightOneCount > retval {
                retval = leftZeroCount + rightOneCount
            }
        }

        return retval
    }
}
