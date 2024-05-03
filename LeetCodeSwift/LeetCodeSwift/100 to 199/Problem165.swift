//
//  Problem165.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/3/24.
//

// 165. Compare Version Numbers (Medium)
// https://leetcode.com/problems/compare-version-numbers/

public class Problem165 {
    public func run() {
        let solve1 = compareVersion("1.01", "1.001")
        print("\(solve1) -- should be 0")
        let solve2 = compareVersion("1.0", "1.0.0")
        print("\(solve2) -- should be 0")
        let solve3 = compareVersion("0.1", "1.1")
        print("\(solve3) -- should be -1")
    }

    public func test(_ version1: String, _ version2: String) -> Int {
        return compareVersion(version1, version2)
    }

    func compareVersion(_ version1: String, _ version2: String) -> Int {
        var array1 = version1.split(separator: ".").map { Int($0)! }
        var array2 = version2.split(separator: ".").map { Int($0)! }
        if array1.count < array2.count {
            for _ in 1...(array2.count - array1.count) {
                array1.append(0)
            }
        } else if array2.count < array1.count {
            for _ in 1...(array1.count - array2.count) {
                array2.append(0)
            }
        }

        for idx in 0..<array1.count {
            if array1[idx] < array2[idx] {
                return -1
            } else if array1[idx] > array2[idx] {
                return 1
            }
        }

        return 0
    }
}
