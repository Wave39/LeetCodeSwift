//
//  Problem1497.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/1/24.
//

// 1497. Check If Array Pairs Are Divisible by k (Medium)
// https://leetcode.com/problems/check-if-array-pairs-are-divisible-by-k/

// https://leetcode.com/problems/check-if-array-pairs-are-divisible-by-k/solutions/4049972/swift-easy-solution/

public class Problem1497 {
    public func run() {
        let solve1 = canArrange([1, 2, 3, 4, 5, 10, 6, 7, 8, 9], 5)
        print("\(solve1) -- should be true")
        let solve2 = canArrange([1, 2, 3, 4, 5, 6], 7)
        print("\(solve2) -- should be true")
        let solve3 = canArrange([1, 2, 3, 4, 5, 6], 10)
        print("\(solve3) -- should be false")
    }

    public func test(_ arr: [Int], _ k: Int) -> Bool {
        return canArrange(arr, k)
    }

    func canArrange(_ arr: [Int], _ k: Int) -> Bool {
        var arr = arr
        var frequency = Array(repeating: 0, count: k)
        for i in 0..<arr.count {
            arr[i] = arr[i] % k
            if arr[i] < 0 {
                arr[i] = arr[i] + k
            }

            frequency[arr[i]] += 1
        }

        if frequency[0] % 2 != 0 {
            return false
        }

        if k/2 == 0 {
            return true
        }

        for i in 1...(k / 2) {
            if frequency[i] != frequency[k - i] {
                return false
            }
        }

        return true
    }
}
