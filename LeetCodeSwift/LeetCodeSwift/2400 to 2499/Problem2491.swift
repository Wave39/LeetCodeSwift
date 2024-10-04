//
//  Problem2491.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/4/24.
//

// 2491. Divide Players Into Teams of Equal Skill (Medium)
// https://leetcode.com/problems/divide-players-into-teams-of-equal-skill/

public class Problem2491 {
    public func run() {
        let solve1 = dividePlayers([3, 2, 5, 1, 3, 4])
        print("\(solve1) -- should be 22")
        let solve2 = dividePlayers([3, 4])
        print("\(solve2) -- should be 12")
        let solve3 = dividePlayers([1, 1, 2, 3])
        print("\(solve3) -- should be -1")
    }

    public func test(_ skill: [Int]) -> Int {
        return dividePlayers(skill)
    }

    func dividePlayers(_ skill: [Int]) -> Int {
        let skill = skill.sorted()
        let target = skill.first! + skill.last!
        var retval = 0
        let skillCount = skill.count
        for idx in 0..<skillCount / 2 {
            let idx2 = skillCount - idx - 1
            if skill[idx] + skill[idx2] == target {
                retval += skill[idx] * skill[idx2]
            } else {
                return -1
            }
        }

        return retval
    }
}
