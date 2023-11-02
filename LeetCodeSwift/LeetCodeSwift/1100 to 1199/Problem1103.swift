//
//  Problem1103.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/2/23.
//

// 1103. Distribute Candies to People (Easy)
// https://leetcode.com/problems/distribute-candies-to-people/

public class Problem1103 {
    public func run() {
        let solve1 = distributeCandies(7, 4)
        print("\(solve1) -- should be [1, 2, 3, 1]")
        let solve2 = distributeCandies(10, 3)
        print("\(solve2) -- should be [5, 2, 3]")
    }

    public func test(_ candies: Int, _ num_people: Int) -> [Int] {
        return distributeCandies(candies, num_people)
    }

    func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
        var candiesLeft = candies
        var retval = Array(repeating: 0, count: num_people)
        var idx = 0
        while candiesLeft > 0 {
            if idx + 1 <= candiesLeft {
                retval[idx % num_people] += idx + 1
                candiesLeft -= idx + 1
            } else {
                retval[idx % num_people] += candiesLeft
                candiesLeft = 0
            }

            idx += 1
        }

        return retval
    }
}
