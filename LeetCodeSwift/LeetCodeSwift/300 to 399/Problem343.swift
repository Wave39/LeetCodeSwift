//
//  Problem343.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/6/23.
//

// 343. Integer Break (Medium)
// https://leetcode.com/problems/integer-break/

// I though this one had something to do with the square root, but it turns it out it was just about powers of 3
// https://leetcode.com/problems/integer-break/solutions/832581/my-swift-solution/

import Foundation

public class Problem343 {
    public func run() {
        let solve1 = integerBreak(2)
        print("\(solve1) -- should be 1")
        let solve2 = integerBreak(10)
        print("\(solve2) -- should be 36")
        let solve3 = integerBreak(3)
        print("\(solve3) -- should be 2")
    }

    public func test(_ n: Int) -> Int {
        return integerBreak(n)
    }

    func integerBreak(_ n: Int) -> Int {
        switch n {
        case 2: return 1
        case 3: return 2
        default:
            let m: Int = n / 3, r: Int = n % 3
            switch r {
                case 0: return Int(pow(Double(3), Double(m)))
                case 1: return Int(pow(Double(3), Double(m - 1))) * 4
                default: return Int(pow(Double(3), Double(m))) * r
            }
        }
    }
}
