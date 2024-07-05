//
//  Problem1174.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/5/24.
//

// 1174. Immediate Food Delivery II (Medium)
// https://leetcode.com/problems/immediate-food-delivery-ii/

public class Problem1174 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select round(sum(immediate) * 100.0 / count(*), 2) as immediate_percentage from (
    select customer_id,
    case when min(order_date) = min(customer_pref_delivery_date) then 1 else 0 end as immediate
    from Delivery
    group by customer_id
    ) d
""")
    }

    public func test() -> Bool {
        return true
    }
}
