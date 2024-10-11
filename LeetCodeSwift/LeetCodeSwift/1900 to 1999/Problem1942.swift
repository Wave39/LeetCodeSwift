//
//  Problem1942.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/11/24.
//

// 1942. The Number of the Smallest Unoccupied Chair (Medium)
// https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/

// https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/solutions/5898797/logical-solution/

public class Problem1942 {
    public func run() {
        let solve1 = smallestChair([[1, 4], [2, 3], [4, 6]], 1)
        print("\(solve1) -- should be 1")
        let solve2 = smallestChair([[3, 10], [1, 5], [2, 6]], 0)
        print("\(solve2) -- should be 2")
    }

    public func test(_ times: [[Int]], _ targetFriend: Int) -> Int {
        return smallestChair(times, targetFriend)
    }

    func smallestChair(_ times: [[Int]], _ targetFriend: Int) -> Int {
        let friends = times.enumerated().reduce(into: [[Int]: Int]()) { partialResult, next in
            partialResult[next.element] = next.offset
        }

        let sorted = friends.sorted(by: { $0.key.first! < $1.key.first! })
        var chairs = Array(repeating: -1, count: times.count)
        for (schedule, friend) in sorted {
            for (index, endTime) in chairs.enumerated() {
                if endTime == -1 || endTime <= schedule.first! {
                    if friend == targetFriend {
                        return index
                    }

                    chairs[index] = schedule.last!
                    break
                }
            }
        }

        return 0
    }
}
