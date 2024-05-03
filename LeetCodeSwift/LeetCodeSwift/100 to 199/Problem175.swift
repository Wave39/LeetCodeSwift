//
//  Problem175.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/16/23.
//

// 175. Combine Two Tables (Easy)
// https://leetcode.com/problems/combine-two-tables/

public class Problem175 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select firstName, lastName, city, state from Person p
    left join Address a on p.personId = a.personId
""")
    }

    public func test() -> Bool {
        return true
    }
}
