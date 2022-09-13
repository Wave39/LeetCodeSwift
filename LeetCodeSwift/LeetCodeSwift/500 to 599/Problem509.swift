//
//  Problem509.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 509. Fibonacci Number
// https://leetcode.com/problems/fibonacci-number/

public class Problem509 {
    public func run() {
        let solve1 = fib(2)
        print("\(solve1) -- should be 1")
        let solve2 = fib(3)
        print("\(solve2) -- should be 2")
        let solve3 = fib(4)
        print("\(solve3) -- should be 3")
    }

    public func test(_ n: Int) -> Int {
        return fib(n)
    }

    var dict = [Int: Int]()

    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        } else if let val = dict[n] {
            return val
        }

        let val = fib(n - 2) + fib(n - 1)
        dict[n] = val
        return val
    }
}

