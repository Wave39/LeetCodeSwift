//
//  Problem1633.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/3/24.
//

// 1633. Percentage of Users Attended a Contest (Easy)
// https://leetcode.com/problems/percentage-of-users-attended-a-contest/

public class Problem1633 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select contest_id,
    round(count(contest_id) * 100.0 / (select count(user_id) from users), 2) as percentage
    from Register r
    inner join Users u on r.user_id = u.user_id
    group by contest_id
    order by percentage desc, contest_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
