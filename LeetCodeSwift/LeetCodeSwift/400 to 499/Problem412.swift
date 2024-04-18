//
//  Problem412.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/18/24.
//

// 412. Fizz Buzz (Easy)
// https://leetcode.com/problems/fizz-buzz/

public class Problem412 {
    public func run() {
        let solve1 = fizzBuzz(3)
        print("\(solve1) -- should be [\"1\", \"2\", \"Fizz\"]")
        let solve2 = fizzBuzz(5)
        print("\(solve2) -- should be [\"1\", \"2\", \"Fizz\", \"4\", \"Buzz\"]")
        let solve3 = fizzBuzz(15)
        print("\(solve3) -- should be [\"1\", \"2\", \"Fizz\", \"4\", \"Buzz\", \"Fizz\", \"7\", \"8\", \"Fizz\", \"Buzz\", \"11\", \"Fizz\", \"13\", \"14\", \"FizzBuzz\"]")
    }

    public func test(_ n: Int) -> [String] {
        return fizzBuzz(n)
    }

    func fizzBuzz(_ n: Int) -> [String] {
        var retval = [String]()
        for idx in 1...n {
            if idx % 3 == 0 {
                if idx % 15 == 0 {
                    retval.append("FizzBuzz")
                } else {
                    retval.append("Fizz")
                }
            } else if idx % 5 == 0 {
                retval.append("Buzz")
            } else {
                retval.append("\(idx)")
            }
        }

        return retval
    }
}

