//
//  Problem1442.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/30/24.
//

// 1442. Count Triplets That Can Form Two Arrays of Equal XOR (Medium)
// https://leetcode.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/

// https://leetcode.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/solutions/5228841/swift/

public class Problem1442 {
    public func run() {
        let solve1 = countTriplets([2, 3, 1, 6, 7])
        print("\(solve1) -- should be 4")
        let solve2 = countTriplets([1, 1, 1, 1, 1])
        print("\(solve2) -- should be 10")
    }

    public func test(_ arr: [Int]) -> Int {
        return countTriplets(arr)
    }

    func countTriplets(_ arr: [Int]) -> Int {
        var retval = 0
        for i in arr.indices.dropLast() {
            var a = 0
            for j in (i + 1)..<arr.count {
                a ^= arr[j - 1]
                var b = 0
                for k in j..<arr.count {
                    b ^= arr[k]
                    retval += a == b ? 1 : 0
                }
            }
        }

        return retval
    }
}
