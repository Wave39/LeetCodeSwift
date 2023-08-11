//
//  Problem319.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

import Darwin

// 319. Bulb Switcher (Medium)
// https://leetcode.com/problems/bulb-switcher/

// I needed to look into the discussion part for this question, as the naive solution was timing out
// I figured it was some kind of trickery

public class Problem319 {
    public func run() {
        let solve1 = bulbSwitch(3)
        print("\(solve1) -- should be 1")
        let solve2 = bulbSwitch(99999999)
        print("\(solve2) -- should be 9999")
    }

    public func test(_ n: Int) -> Int {
        return bulbSwitch(n)
    }

    func bulbSwitch(_ n: Int) -> Int {
        return Int(sqrt(Double(n)))
    }

    func bulbSwitch_naive(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }

        var lights = Array(repeating: false, count: n)
        for step in 1...n {
            var idx = step
            while idx <= n {
                lights[idx - 1].toggle()
                idx += step
            }
        }

        return lights.filter { $0 == true }.count
    }
}
