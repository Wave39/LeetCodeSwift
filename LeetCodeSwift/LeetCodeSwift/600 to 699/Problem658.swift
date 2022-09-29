//
//  Problem658.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/28/22.
//

// 658. Find K Closest Elements
// https://leetcode.com/problems/find-k-closest-elements/

public class Problem658 {
    public func run() {
        let solve1 = findClosestElements([1, 2, 3, 4, 5], 4, 3)
        print("\(solve1) -- should be [1, 2, 3, 4]")
        let solve2 = findClosestElements([1, 2, 3, 4, 5], 4, -1)
        print("\(solve2) -- should be [1, 2, 3, 4]")
        let solve3 = findClosestElements([1, 1, 1, 10, 10, 10], 1, 9)
        print("\(solve3) -- should be [10]")
    }

    public func test(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        return findClosestElements(arr, k, x)
    }

    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        func aCloserToB(_ a: Int, _ b: Int, _ x: Int) -> Bool {
            if abs(a - x) < abs(b - x) {
                return true
            } else if abs(a - x) == abs(b - x) && a < b {
                return true
            }

            return false
        }

        var retval = Array(arr[0..<k])
        if k == arr.count {
            return retval
        }

        for idx in k..<arr.count {
            if aCloserToB(arr[idx], retval[0], x) {
                retval.removeFirst()
                retval.append(arr[idx])
            }
        }

        return retval
    }
}
