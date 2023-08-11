//
//  Problem1383.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/11/22.
//

// 1383. Maximum Performance of a Team (Hard)
// https://leetcode.com/problems/maximum-performance-of-a-team/

public class Problem1383 {
    public func run() {
        let solve1 = maxPerformance(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 2)
        print("\(solve1) -- should be 60")
        let solve2 = maxPerformance(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 3)
        print("\(solve2) -- should be 68")
        let solve3 = maxPerformance(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 4)
        print("\(solve3) -- should be 72")
    }

    public func test(_ n: Int, _ speed: [Int], _ efficiency: [Int], _ k: Int) -> Int {
        return maxPerformance(n, speed, efficiency, k)
    }

    func maxPerformance(_ n: Int, _ speed: [Int], _ efficiency: [Int], _ k: Int) -> Int {
        let speedEfficiencyPair = zip(speed, efficiency).sorted { a, b in a.1 > b.1 }
        let sortedEfficiency = speedEfficiencyPair.map { $0.1 }
        let sortedSpeed = speedEfficiencyPair.map { $0.0 }
        var sum = 0, arr = [Int](), res = 0

        for i in 0..<n {
            let currSpeed = sortedSpeed[i]
            let currEiff = sortedEfficiency[i]
            sum += currSpeed
            var l = 0, r = arr.endIndex
            while l<r {
                let mid = (l+r)>>1
                if arr[mid] < currSpeed {
                    l = mid + 1
                } else {
                    r = mid
                }
            }
            arr.insert(currSpeed, at: l)

            res = max(res, sum*currEiff)
            if i >= k-1 {
                let first = arr.removeFirst()
                sum -= first
            }
        }
        return res % Int(1E9+7)
    }
}
