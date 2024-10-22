//
//  Problem626.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/22/24.
//

// 626. Exchange Seats (Medium)
// https://leetcode.com/problems/exchange-seats/

public class Problem626 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    SELECT 
        CASE
            WHEN id % 2 = 1 AND EXISTS (SELECT 1 FROM Seat s2 WHERE s2.id = Seat.id + 1) THEN id + 1
            WHEN id % 2 = 0 THEN id - 1
            ELSE id
        END AS id,
        student
    FROM Seat
    ORDER BY id
""")
    }

    public func test() -> Bool {
        return true
    }
}
