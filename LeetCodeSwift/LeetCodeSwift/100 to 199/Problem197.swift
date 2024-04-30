//
//  Problem197.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/30/24.
//

// 197. Rising Temperature (Easy)
// https://leetcode.com/problems/rising-temperature/

public class Problem197 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select Id from (
        SELECT
            w.id as Id,
            LAG(w.temperature) OVER(ORDER BY w.recordDate) previousValue,
            w.temperature as currentValue,
            DATEDIFF(day, w.recordDate, LAG(w.recordDate) OVER(ORDER BY w.recordDate)) as diff
        FROM Weather w
    ) d
    where d.PreviousValue is not null and currentValue > previousValue and diff = -1
""")
    }
}
