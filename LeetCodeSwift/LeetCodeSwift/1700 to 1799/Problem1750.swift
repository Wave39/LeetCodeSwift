//
//  Problem1750.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/5/24.
//

// 1750. Minimum Length of String After Deleting Similar Ends (Medium)
// https://leetcode.com/problems/minimum-length-of-string-after-deleting-similar-ends/

// WOO HOO!!!
// Runtime: 55 ms, Beats 100.00% of users with Swift
// Memory: 19.38 MB, Beats 100.00% of users with Swift

public class Problem1750 {
    public func run() {
        let solve1 = minimumLength("ca")
        print("\(solve1) -- should be 2")
        let solve2 = minimumLength("cabaabac")
        print("\(solve2) -- should be 0")
        let solve3 = minimumLength("aabccabba")
        print("\(solve3) -- should be 3")
    }

    public func test(_ s: String) -> Int {
        return minimumLength(s)
    }

    func minimumLength(_ s: String) -> Int {
        let arr = Array(s)
        var startIndex = 0
        var endIndex = arr.count - 1
        while true {
            if (endIndex - startIndex) + 1 < 2 {
                return (endIndex - startIndex) + 1
            }

            if arr[startIndex] != arr[endIndex] {
                return (endIndex - startIndex) + 1
            }

            let characterToRemove = arr[startIndex]
            while arr[startIndex] == characterToRemove && startIndex < endIndex {
                startIndex += 1
            }

            while arr[endIndex] == characterToRemove && endIndex > startIndex {
                endIndex -= 1
            }

            if startIndex == endIndex && arr[startIndex] == characterToRemove {
                return 0
            }
        }
    }

    func minimumLength_naive(_ s: String) -> Int {
        // This method passed 99 of 100 test cases, failing of course
        // on the test case with the massive input string.
        var str = s
        while true {
            if str.count < 2 {
                return str.count
            }

            if str.first! != str.last! {
                return str.count
            }

            let characterToRemove = str.first!
            while !str.isEmpty && str.first! == characterToRemove {
                str.removeFirst()
            }

            while !str.isEmpty && str.last! == characterToRemove {
                str.removeLast()
            }
        }
    }
}
