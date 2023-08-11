//
//  Problem600.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/22.
//

// 600. Non-negative Integers without Consecutive Ones (Hard)
// https://leetcode.com/problems/non-negative-integers-without-consecutive-ones/

// https://leetcode.com/problems/non-negative-integers-without-consecutive-ones/discuss/1361862/Swift-solution-(DP)

public class Problem600 {
    public func run() {
        let solve1 = findIntegers(5)
        print("\(solve1) -- should be 5")
        let solve2 = findIntegers(1)
        print("\(solve2) -- should be 2")
        let solve3 = findIntegers(2)
        print("\(solve3) -- should be 3")
        let solve4 = findIntegers(10000000)
        print("\(solve4) -- should be 103682")
    }

    public func test(_ n: Int) -> Int {
        return findIntegers(n)
    }

    func findIntegers(_ n: Int) -> Int {
        let nBits = num2bits(n), nBitsCount = nBits.count
        var dp = [[Int]](repeating: [Int](repeating: 1, count: 2), count: nBitsCount), result = 0
        for bit in 1..<nBitsCount {
            dp[bit][0] = dp[bit - 1][0] + dp[bit - 1][1]
            dp[bit][1] = dp[bit - 1][0]
        }
        for bit in stride(from: nBitsCount - 1, through: 0, by: -1) where nBits[bit] == 1 {
            result += dp[bit][0] // e.g. 0b1000: + dp[3][0] - 1 (all non-zero integers less than 0b1000) + 1 (0b1000 itself)
            if bit < nBitsCount - 1 && nBits[bit + 1] == 1 { // found consecutive ones
                result -= 1 // e.g. 0b1000: don't count 0b1000 itself
                break
            }
        }
        return result + 1 // don't forget about zero
    }

    func num2bits(_ num: Int) -> [Int] { // 0b11110000 -> [0, 0, 0, 0, 1, 1, 1, 1]
        guard num > 0 else { return [0] }
        var remainder = num, result = [Int]()
        while remainder > 0 {
            result.append(remainder & 1)
            remainder >>= 1
        }
        return result
    }

    func findIntegers_naive(_ n: Int) -> Int {
        var retval = 0
        for idx in 0...n {
            let binaryString = String(idx, radix: 2)
            if !binaryString.contains("11") {
                print(binaryString, idx)
                retval += 1
            }
        }

        return retval
    }
}
