//
//  Problem1921.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/7/23.
//

// 1921. Eliminate Maximum Number of Monsters (Medium)
// https://leetcode.com/problems/eliminate-maximum-number-of-monsters/

// https://leetcode.com/problems/eliminate-maximum-number-of-monsters/solutions/4258693/swift-short-simple-w-comments/

import Foundation

public class Problem1921 {
    public func run() {
        let solve1 = eliminateMaximum([1,3,4], [1,1,1])
        print("\(solve1) -- should be 3")
        let solve2 = eliminateMaximum([1,1,2,3], [1,1,1,1])
        print("\(solve2) -- should be 1")
        let solve3 = eliminateMaximum([3,2,4], [5,3,2])
        print("\(solve3) -- should be 1")
    }

    public func test(_ dist: [Int], _ speed: [Int]) -> Int {
        return eliminateMaximum(dist, speed)
    }

    func eliminateMaximum(_ dist: [Int], _ speed: [Int]) -> Int {
        var res = 0
        var arrivals = [Int]()

        for i in 0..<dist.count {
            let arrivalTime = Int(ceil(Double(dist[i]) / Double(speed[i])))
            arrivals.append(arrivalTime)
        }

        arrivals.sort()

        for i in 0..<arrivals.count {
            if arrivals[i] <= i {
                break
            }

            res += 1
        }

        return res
    }
}
