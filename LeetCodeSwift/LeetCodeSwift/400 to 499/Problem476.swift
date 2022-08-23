//
//  Problem476.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 476. Number Complement
// https://leetcode.com/problems/number-complement/

public class Problem476 {
    public func run() {
        let solve1 = findComplement(5)       // 2
        print("\(solve1) -- should be 2")
        let solve2 = findComplement(1)       // 0
        print("\(solve2) -- should be 0")
    }

    public func test(_ n: Int) -> Int {
        return findComplement(n)
    }

    func findComplement(_ num: Int) -> Int {
        let binaryString = String(num, radix: 2)
        var complementString = ""
        for c in binaryString {
            if c == "1" {
                complementString += "0"
            } else {
                complementString += "1"
            }
        }

        return Int(complementString, radix: 2)!
    }
}
