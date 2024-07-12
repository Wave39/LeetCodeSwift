//
//  Problem610.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/12/24.
//

// 610. Triangle Judgement (Easy)
// https://leetcode.com/problems/triangle-judgement/

public class Problem610 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select x, y, z,
    case when (x + y <= z or x + z <= y or y + z <= x) then 'No' else 'Yes' end as triangle
    from Triangle
""")
    }

    public func test() -> Bool {
        return true
    }
}
