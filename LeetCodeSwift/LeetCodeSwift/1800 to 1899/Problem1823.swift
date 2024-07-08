//
//  Problem1823.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/8/24.
//

// 1823. Find the Winner of the Circular Game (Medium)
// https://leetcode.com/problems/find-the-winner-of-the-circular-game/

public class Problem1823 {
    public func run() {
        let solve1 = findTheWinner(5, 2)
        print("\(solve1) -- should be 3")
        let solve2 = findTheWinner(6, 5)
        print("\(solve2) -- should be 1")
    }

    public func test(_ n: Int, _ k: Int) -> Int {
        return findTheWinner(n, k)
    }

    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var friends = Array(1...n)
        var friendIndex = 0
        for _ in 1..<n {
            friendIndex += (k - 1)
            while friendIndex >= friends.count {
                friendIndex -= friends.count
            }

            friends.remove(at: friendIndex)
            if friendIndex >= friends.count {
                friendIndex = 0
            }
        }

        return friends[0]
    }
}
