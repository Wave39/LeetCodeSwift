//
//  Problem2064.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/14/24.
//

// 2064. Minimized Maximum of Products Distributed to Any Store (Medium)
// https://leetcode.com/problems/minimized-maximum-of-products-distributed-to-any-store/

// https://leetcode.com/problems/minimized-maximum-of-products-distributed-to-any-store/solutions/6042511/swift/

public class Problem2064 {
    public func run() {
        let solve1 = minimizedMaximum(6, [11, 6])
        print("\(solve1) -- should be 3")
        let solve2 = minimizedMaximum(7, [15, 10, 10])
        print("\(solve2) -- should be 5")
        let solve3 = minimizedMaximum(1, [100000])
        print("\(solve3) -- should be 100000")
    }

    public func test(_ n: Int, _ quantities: [Int]) -> Int {
        return minimizedMaximum(n, quantities)
    }

    func minimizedMaximum(_ n: Int, _ quantities: [Int]) -> Int {
        var (l, r) = (quantities.reduce(n - 1, +) / n, quantities.max()!)
        while l < r {
            let mid = (l + r) / 2
            let sum = quantities.reduce(0) { sum, q in sum + (q + mid - 1) / mid }
            (l, r) = sum <= n ? (l, mid) : (mid + 1, r)
        }

        return l
    }
}
