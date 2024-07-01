//
//  Problem1251.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/1/24.
//

// 1251. Average Selling Price (Easy)
// https://leetcode.com/problems/average-selling-price/

public class Problem1251 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select p.product_id, isnull(round(sum(price * units) * 1.0 / sum(units), 2), 0) as average_price
    from Prices p
    left join UnitsSold us on p.product_id = us.product_id and
    us.purchase_date between p.start_date and p.end_date
    group by p.product_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
