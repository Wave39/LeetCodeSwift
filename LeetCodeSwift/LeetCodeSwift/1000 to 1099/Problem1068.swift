//
//  Problem1068.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/26/24.
//

// 1068. Product Sales Analysis I (Easy)
// https://leetcode.com/problems/product-sales-analysis-i/

public class Problem1068 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select product_name, year, price from Product p
    join Sales s on s.product_id = p.product_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
