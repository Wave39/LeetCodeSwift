//
//  Problem1211.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/3/24.
//

// 1211. Queries Quality and Percentage (Easy)
// https://leetcode.com/problems/queries-quality-and-percentage/

public class Problem1211 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select query_name,
    round(sum(rating * 1.0 / position) / iif(count(query_name) = 0, 1, count(query_name)), 2) as quality,
    round((select count(*) from Queries where query_name = q.query_name and rating < 3) * 100.0 / iif(count(query_name) = 0, 1, count(query_name)), 2) as poor_query_percentage
    from Queries q
    where query_name is not null
    group by query_name
""")
    }

    public func test() -> Bool {
        return true
    }
}
