//
//  Problem1070.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/9/24.
//

// 1070. Product Sales Analysis III (Medium)
// https://leetcode.com/problems/product-sales-analysis-iii/

public class Problem1070 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    with Expression as (
        select product_id, min(year) as year from Sales
        group by product_id
    )

    select s.product_id, s.year as first_year, s.quantity, s.price
    from Sales s
    inner join Expression e on e.product_id = s.product_id and e.year = s.year
""")
    }

    public func test() -> Bool {
        return true
    }
}
