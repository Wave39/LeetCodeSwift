//
//  Problem550.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/5/24.
//

// 550. Game Play Analysis IV (Medium)
// https://leetcode.com/problems/game-play-analysis-iv/

public class Problem550 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select
    round(sum(case when a2.player_id is not null then 1 else 0 end) * 1.0 / count(*), 2) as fraction from
    (
    select player_id, min(event_date) as event_date
    from Activity
    group by player_id
    ) a1
    left join Activity a2 on a1.player_id = a2.player_id and a2.event_date = dateadd(day, 1, a1.event_date)
""")
    }

    public func test() -> Bool {
        return true
    }
}
