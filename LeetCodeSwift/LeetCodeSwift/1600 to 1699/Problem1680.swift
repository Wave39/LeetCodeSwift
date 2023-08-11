//
//  Problem1680.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/22/22.
//

// 1680. Concatenation of Consecutive Binary Numbers (Medium)
// https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/

// https://leetcode.com/problems/concatenation-of-consecutive-binary-numbers/discuss/961671/Swift-O(N)-clean-solution

public class Problem1680 {
    public func run() {
        let solve1 = concatenatedBinary(1)
        print("\(solve1) -- should be 1")
        let solve2 = concatenatedBinary(3)
        print("\(solve2) -- should be 27")
        let solve3 = concatenatedBinary(12)
        print("\(solve3) -- should be 505379714")
    }

    public func test(_ n: Int) -> Int {
        return concatenatedBinary(n)
    }

    func concatenatedBinary(_ n: Int) -> Int {
        let mod = 1000000007
        var res = 0
        var power = 1
        for i in 1...n {
            if i >= power {
                power = power * 2
            }
            res = (((res * power) % mod) + i) % mod
        }

        return res
    }
}
