//
//  Problem1141.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/8/24.
//

// 1141. User Activity for the Past 30 Days I (Easy)
// https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

public class Problem1141 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select activity_date as day, count(distinct(user_id)) as active_users
    from Activity
    where activity_date > dateadd(day, -30, '2019-07-27') and activity_date <= '2019-07-27'
    group by activity_date
""")
    }

    public func test() -> Bool {
        return true
    }
}
