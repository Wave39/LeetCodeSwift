//
//  Problem1193.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/4/24.
//

// 1193. Monthly Transactions I (Medium)
// https://leetcode.com/problems/monthly-transactions-i/

public class Problem1193 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select FORMAT(YEAR(trans_date), '0000') + '-' + FORMAT(MONTH(trans_date), '00') as month,
    country,
    count(state) as trans_count,
    sum(case when state = 'approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
    from Transactions
    group by FORMAT(YEAR(trans_date), '0000') + '-' + FORMAT(MONTH(trans_date), '00'), country
""")
    }

    public func test() -> Bool {
        return true
    }
}
