//
//  Problem91.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/1/22.
//

// 91. Decode Ways
// https://leetcode.com/problems/decode-ways/

// https://leetcode.com/problems/decode-ways/discuss/902452/Swift-DP

public class Problem91 {
    public func run() {
        let solve1 = numDecodings("12")
        print("\(solve1) -- should be 2")
        let solve2 = numDecodings("226")
        print("\(solve2) -- should be 3")
        let solve3 = numDecodings("06")
        print("\(solve3) -- should be 0")
    }

    public func test(_ s: String) -> Int {
        return numDecodings(s)
    }

    func numDecodings(_ s: String) -> Int {
        guard let char = s.first, char != "0" else { return 0 }

        let arr = Array(s)
        var dp = Array<Int>(repeating: 0, count: s.count + 1)

        dp[dp.count - 1] = 1

        for i in stride(from: dp.count - 2, through: 0, by: -1) {
            if arr[i] == "0" {
                guard let val = arr[i - 1].wholeNumberValue, val < 3 else { return 0 }
                dp[i] = 0
            } else {
                dp[i] = dp[i + 1]
                if (i + 1) < arr.count, let val = Int(String(arr[i...(i + 1)])), val < 27 {
                   dp[i] += dp[i + 2]
                }
            }
        }
        return dp[0]
    }

}
