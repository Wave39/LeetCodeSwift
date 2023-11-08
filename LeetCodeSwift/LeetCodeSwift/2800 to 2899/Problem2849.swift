//
//  Problem2849.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/8/23.
//

// 2849. Determine if a Cell Is Reachable at a Given Time (Medium)
// https://leetcode.com/problems/determine-if-a-cell-is-reachable-at-a-given-time/

import Foundation

public class Problem2849 {
    public func run() {
        let solve1 = isReachableAtTime(2, 4, 7, 7, 6)
        print("\(solve1) -- should be true")
        let solve2 = isReachableAtTime(3, 1, 7, 3, 3)
        print("\(solve2) -- should be false")
        let solve3 = isReachableAtTime(1, 1, 1, 3, 2)
        print("\(solve3) -- should be true")
        let solve4 = isReachableAtTime(1, 1, 1, 1, 3)
        print("\(solve4) -- should be true")
        let solve5 = isReachableAtTime(1, 3, 1, 3, 1)
        print("\(solve5) -- should be false")
    }

    public func test(_ sx: Int, _ sy: Int, _ fx: Int, _ fy: Int, _ t: Int) -> Bool {
        return isReachableAtTime(sx, sy, fx, fy, t)
    }

    func isReachableAtTime(_ sx: Int, _ sy: Int, _ fx: Int, _ fy: Int, _ t: Int) -> Bool {
        let xDelta = abs(sx - fx)
        let yDelta = abs(sy - fy)

        if xDelta == 0 && yDelta == 0 {
            return t != 1
        } else if xDelta == yDelta {
            // straight diagonal
            return xDelta <= t
        } else if yDelta == 0 {
            // horizontal
            return xDelta <= t
        } else if xDelta == 0 {
            // vertical
            return yDelta <= t
        } else if xDelta > yDelta {
            // diagonal, then horizontal
            let sx2 = sx + yDelta * (fx > sx ? 1 : -1)
            return (yDelta + abs(sx2 - fx)) <= t
        } else {
            // diagonal, then vertical
            let sy2 = sy + xDelta * (fy > sy ? 1 : -1)
            return (xDelta + abs(sy2 - fy)) <= t
        }
    }
}
