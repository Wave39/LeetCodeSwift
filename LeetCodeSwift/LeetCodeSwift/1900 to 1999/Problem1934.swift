//
//  Problem1934.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/13/24.
//

// 1934. Confirmation Rate (Medium)
// https://leetcode.com/problems/confirmation-rate/

public class Problem1934 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select s.user_id, round(
        (select count(*) from Confirmations c2 where s.user_id = c2.user_id and c2.action = 'confirmed')
        / (count(*) + 0.0), 2) as confirmation_rate
    from Signups s
    left outer join Confirmations c on s.user_id = c.user_id
    group by s.user_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
