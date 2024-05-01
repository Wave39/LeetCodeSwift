//
//  Problem1661.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/1/24.
//

// 1661. Average Time of Process per Machine (Easy)
// https://leetcode.com/problems/average-time-of-process-per-machine/

public class Problem1661 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
    from Activity a1
    join Activity a2 on a1.process_id = a2.process_id and a1.machine_id = a2.machine_id and a1.timestamp < a2.timestamp
    group by a1.machine_id
""")
    }
}
