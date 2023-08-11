//
//  Problem2007.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/15/22.
//

// 2007. Find Original Array From Doubled Array (Medium)
// https://leetcode.com/problems/find-original-array-from-doubled-array/

public class Problem2007 {
    public func run() {
        let solve1 = findOriginalArray([1, 3, 4, 2, 6, 8])
        print("\(solve1) -- should be [1, 3, 4]")
        let solve2 = findOriginalArray([6, 3, 0, 1])
        print("\(solve2) -- should be []")
        let solve3 = findOriginalArray([1])
        print("\(solve3) -- should be []")
        let solve4 = findOriginalArray([1, 0, 0, 2, 0, 0])
        print("\(solve4) -- should be [0, 0, 1]")
    }

    public func test(_ changed: [Int]) -> [Int] {
        return findOriginalArray(changed)
    }

    func findOriginalArray(_ changed: [Int]) -> [Int] {
        if changed.count % 2 == 1 {
            return []
        }

        var retval = [Int]()
        var freq = Dictionary(changed.map { ($0, 1) }, uniquingKeysWith: +)
        let sortedKeys = freq.keys.sorted()
        for k in sortedKeys {
            let count = freq[k]!
            if count == 0 {
                continue
            }

            if freq[k * 2, default: 0] < count {
                return []
            }

            if k == 0 {
                retval.append(contentsOf: Array(repeating: k, count: count / 2))
            } else {
                retval.append(contentsOf: Array(repeating: k, count: count))
            }

            freq[k * 2]! -= count
        }

        return retval
    }

    func findOriginalArray_array(_ changed: [Int]) -> [Int] {
        if changed.count % 2 == 1 {
            return []
        }

        var retval = [Int]()
        var sorted = changed.sorted()
        while !sorted.isEmpty {
            let firstNumber = sorted.removeFirst()
            let idx = sorted.firstIndex { $0 == firstNumber * 2 }
            if idx == nil {
                return []
            }

            retval.append(firstNumber)
            sorted.remove(at: idx!)
        }

        return retval
    }
}
