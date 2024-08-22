//
//  Problem1009.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/24.
//

// 1009. Complement of Base 10 Integer (Easy)
// https://leetcode.com/problems/complement-of-base-10-integer/

// NOTE: This problem is the same as:
// 476. Number Complement (Easy)
// https://leetcode.com/problems/number-complement/

public class Problem1009 {
    public func run() {
        let solve1 = bitwiseComplement(5)
        print("\(solve1) -- should be 2")
        let solve2 = bitwiseComplement(7)
        print("\(solve2) -- should be 0")
        let solve3 = bitwiseComplement(10)
        print("\(solve3) -- should be 5")
    }

    public func test(_ n: Int) -> Int {
        return bitwiseComplement(n)
    }

    func bitwiseComplement(_ n: Int) -> Int {
        let binaryString = String(n, radix: 2)
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
