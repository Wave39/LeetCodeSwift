//
//  Problem2423.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/25/23.
//

// 2423. Remove Letter To Equalize Frequency (Easy)
// https://leetcode.com/problems/remove-letter-to-equalize-frequency/

// WOO HOO!!!
// Runtime: 0ms, Beats 100.00% of users with Swift
// Memory: 14.21MB, Beats 62.50% of users with Swift

public class Problem2423 {
    public func run() {
        let solve1 = equalFrequency("abcc")
        print("\(solve1) -- should be true")
        let solve2 = equalFrequency("aazz")
        print("\(solve2) -- should be false")
        let solve3 = equalFrequency("bac")
        print("\(solve3) -- should be true")
        let solve4 = equalFrequency("abbcc")
        print("\(solve4) -- should be true")
    }

    public func test(_ word: String) -> Bool {
        return equalFrequency(word)
    }

    func equalFrequency(_ word: String) -> Bool {
        var frequencies: [Character : Int] = [:]
        for c in word {
            frequencies[c, default: 0] += 1
        }

        let arr = frequencies.values.sorted()
        let arrCount = arr.count

        if arr[0] == 1 {
            let arr2 = arr[1...]
            let arr2Count = arr2.filter { $0 == arr[1] }.count
            if arr2Count == arrCount - 1 {
                return true
            }
        }

        for idx in 0..<(arrCount - 1) {
            if arr[idx] != (arr[arrCount - 1] - 1)
            {
                return false
            }
        }

        return true
    }
}
