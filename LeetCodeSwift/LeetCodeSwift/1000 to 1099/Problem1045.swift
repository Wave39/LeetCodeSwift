//
//  Problem1045.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/10/24.
//

// 1045. Customers Who Bought All Products (Medium)
// https://leetcode.com/problems/customers-who-bought-all-products/

public class Problem1045 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select customer_id from Customer
    group by customer_id
    having count(distinct(product_key)) = (select count(*) from Product)
""")
    }

    public func test() -> Bool {
        return true
    }
}
