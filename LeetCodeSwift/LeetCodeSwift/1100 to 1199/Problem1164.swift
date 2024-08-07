//
//  Problem1164.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/1/24.
//

// 1164. Product Price at a Given Date (Medium)
// https://leetcode.com/problems/product-price-at-a-given-date/

public class Problem1164 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select distinct(product_id),
    isnull((select top 1 new_price from Products p2 where p1.product_id = p2.product_id and change_date <= '2019-08-16'
    order by change_date desc), 10) as price
    from Products p1
""")
    }

    public func test() -> Bool {
        return true
    }
}
