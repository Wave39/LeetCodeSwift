//
//  Problem134.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/6/23.
//

// 134. Gas Station (Medium)
// https://leetcode.com/problems/gas-station/

// I thought the brute force would work, but of course it did not.
// https://leetcode.com/problems/gas-station/solutions/3000295/solution-swift-easy-to-understand/

public class Problem134 {
    public func run() {
        let solve1 = canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])
        print("\(solve1) -- should be 3")
        let solve2 = canCompleteCircuit([2, 3, 4], [3, 4, 3])
        print("\(solve2) -- should be -1")
    }

    public func test(_ gas: [Int], _ cost: [Int]) -> Int {
        return canCompleteCircuit(gas, cost)
    }

    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        if cost.reduce(0, +) > gas.reduce(0, +) { return -1 }

        var total = 0
        var index = 0

        for i in 0..<gas.count {
            total += gas[i] - cost[i]
            if total < 0 {
                total = 0
                index = i + 1
            }
        }

        return index
    }

    func canCompleteCircuit_naive(_ gas: [Int], _ cost: [Int]) -> Int {
        func validCircuit(_ startingIdx: Int) -> Bool {
            var tank = 0
            for idx in startingIdx..<(startingIdx + gas.count) {
                let idx2 = idx % gas.count
                tank += gas[idx2]
                if cost[idx2] > tank {
                    return false
                } else {
                    tank -= cost[idx2]
                }
            }

            return true
        }

        for startingIdx in 0..<gas.count {
            if validCircuit(startingIdx) {
                return startingIdx
            }
        }

        return -1
    }
}
