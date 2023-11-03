//
//  Problem1441.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/3/23.
//

// 1441. Build an Array With Stack Operations (Medium)
// https://leetcode.com/problems/build-an-array-with-stack-operations/

// WOO HOO!!!
// Runtime: 8ms, Beats 50.00% of users with Swift
// Memory: 13.95MB, Beats 100.00% of users with Swift

public class Problem1441 {
    public func run() {
        let solve1 = buildArray([1, 3], 3)
        print("\(solve1) -- should be [\"Push\", \"Push\", \"Pop\", \"Push\"]")
        let solve2 = buildArray([1, 2, 3], 3)
        print("\(solve2) -- should be [\"Push\", \"Push\", \"Push\"]")
        let solve3 = buildArray([1, 2], 4)
        print("\(solve3) -- should be [\"Push\", \"Push\"]")
    }

    public func test(_ target: [Int], _ n: Int) -> [String] {
        return buildArray(target, n)
    }

    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var arr = [Int]()
        var operations = [String]()
        var idx = 1
        while arr != target {
            arr.append(idx)
            operations.append("Push")
            if idx != target[arr.count - 1] {
                arr.removeLast()
                operations.append("Pop")
            }
             idx += 1
        }

        return operations
    }
}
