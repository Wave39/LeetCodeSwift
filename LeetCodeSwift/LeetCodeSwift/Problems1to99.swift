//
//  Problems1to99.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

public class Problems1to99 {
    public func run(_ problemNumber: Int) {
        if problemNumber == 1 {
            Problem1().run()
        } else if problemNumber == 26 {
            Problem26().run()
        } else {
            print("No such problem number exists")
        }
    }
}
