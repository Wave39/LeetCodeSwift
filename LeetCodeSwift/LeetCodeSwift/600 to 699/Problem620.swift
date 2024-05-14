//
//  Problem620.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/14/24.
//

// 620. Not Boring Movies (Easy)
// https://leetcode.com/problems/not-boring-movies/

public class Problem620 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select * from Cinema
        where id % 2 = 1 and description != 'boring'
        order by rating desc
""")
    }

    public func test() -> Bool {
        return true
    }
}
