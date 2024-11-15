//
//  Problem1574.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/15/24.
//

// 11574. Shortest Subarray to be Removed to Make Array Sorted (Medium)
// https://leetcode.com/problems/shortest-subarray-to-be-removed-to-make-array-sorted/

// https://leetcode.com/problems/shortest-subarray-to-be-removed-to-make-array-sorted/solutions/6047789/swift-easy-to-understand-and-simple-solution/

public class Problem1574 {
    public func run() {
        let solve1 = findLengthOfShortestSubarray([1, 2, 3, 10, 4, 2, 3, 5])
        print("\(solve1) -- should be 3")
        let solve2 = findLengthOfShortestSubarray([5, 4, 3, 2, 1])
        print("\(solve2) -- should be 4")
        let solve3 = findLengthOfShortestSubarray([1, 2, 3])
        print("\(solve3) -- should be 0")
    }

    public func test(_ arr: [Int]) -> Int {
        return findLengthOfShortestSubarray(arr)
    }

    func findLengthOfShortestSubarray(_ arr: [Int]) -> Int {
        let n = arr.count
        var l = 0
        var r = n - 1

        while l < n - 1 && arr[l + 1] >= arr[l] {
            l += 1
        }

        while r > 0 && arr[r - 1] <= arr[r] {
            r -= 1
        }

        var ans = min(n - 1 - l, r)
        var i = l
        var j = n - 1

        while i >= 0 && j >= r && j > i {
            if arr[i] <= arr[j] {
                j -= 1
            } else {
                i -= 1
            }

            ans = min(ans, j - i)
        }

        return ans
    }
}
