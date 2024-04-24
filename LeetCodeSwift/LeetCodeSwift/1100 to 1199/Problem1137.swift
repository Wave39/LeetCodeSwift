//
//  Problem1137.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/24/24.
//

// 1137. N-th Tribonacci Number (Easy)
// https://leetcode.com/problems/n-th-tribonacci-number/

// WOO HOO!!!
// Runtime: 0 ms, Beats 100.00% of users with Swift
// Memory: 15.40 MB, Beats 52.47% of users with Swift

public class Problem1137 {
    public func run() {
        let solve1 = tribonacci(4)
        print("\(solve1) -- should be 4")
        let solve2 = tribonacci(25)
        print("\(solve2) -- should be 1389537")
    }

    public func test(_ n: Int) -> Int {
        return tribonacci(n)
    }

    func tribonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n < 3 {
            return 1
        }

        var array = [0, 1, 1]
        for _ in 1...(n - 2) {
            let newValue = array.reduce(0, +)
            array.removeFirst()
            array.append(newValue)
        }

        return array.last!
    }
}
