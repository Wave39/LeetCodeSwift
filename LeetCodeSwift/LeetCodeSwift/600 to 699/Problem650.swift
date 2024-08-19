//
//  Problem650.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/19/24.
//

// 650. 2 Keys Keyboard (Medium)
// https://leetcode.com/problems/2-keys-keyboard/

// https://leetcode.com/problems/2-keys-keyboard/solutions/5657884/swift-clean/

public class Problem650 {
    public func run() {
        let solve1 = minSteps(3)
        print("\(solve1) -- should be 3")
        let solve2 = minSteps(1)
        print("\(solve2) -- should be 0")
    }

    public func test(_ n: Int) -> Int {
        return minSteps(n)
    }

    func minSteps(_ n: Int) -> Int {
        guard n > 1 else { return 0 }

        var n = n
        var result = 0

        for factor in 2...n {
            guard factor <= n else { break }
            while n % factor == 0 {
                result += factor
                n /= factor
            }
        }

        return result
    }
}
