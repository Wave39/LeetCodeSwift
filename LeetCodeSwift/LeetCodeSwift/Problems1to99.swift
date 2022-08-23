//
//  Problems1to99.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

public class Problems1to99 {
    public func solve(_ problemNumber: Int) {
        if problemNumber == 1 {
            Problem1().solve()
        } else if problemNumber == 26 {
            Problem26().solve()
        } else {
            print("No such problem number exists")
        }
    }
}
