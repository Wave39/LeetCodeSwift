//
//  Problem1996.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/11/22.
//

// 1996. The Number of Weak Characters in the Game (Medium)
// https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/

public class Problem1996 {
    public func run() {
        let solve1 = numberOfWeakCharacters([[5, 5], [6, 3], [3, 6]])
        print("\(solve1) -- should be 0")
        let solve2 = numberOfWeakCharacters([[2, 2], [3, 3]])
        print("\(solve2) -- should be 1")
        let solve3 = numberOfWeakCharacters([[1, 5], [10, 4], [4, 3]])
        print("\(solve3) -- should be 1")
    }

    public func test(_ properties: [[Int]]) -> Int {
        return numberOfWeakCharacters(properties)
    }

    func numberOfWeakCharacters(_ properties: [[Int]]) -> Int {
        let properties = properties.sorted(by: sortProperties)

        var result = 0
        var maxDefense = Int.min

        for property in properties {
            let currentDefense = property[1]
            if currentDefense < maxDefense  {
                result += 1
            }
            maxDefense = max(maxDefense, currentDefense)

        }
        return result
    }

    func sortProperties(_ p1: [Int], _ p2: [Int]) -> Bool {
        if p1[0] != p2[0] {
            return p1[0] > p2[0]
        } else {
            return p1[1] < p2[1]
        }
    }

    func numberOfWeakCharacters_dict(_ properties: [[Int]]) -> Int {
        var dict = [Int: [Int]]()
        for character in properties {
            dict[character[0], default: []].append(character[1])
        }

        var weak = 0
        for attack in dict.keys {
            let greaterAttackKeys = dict.keys.filter { $0 > attack }
            var defenseValues = [Int]()
            for gak in greaterAttackKeys {
                defenseValues.append(contentsOf: dict[gak]!)
            }
            for defense in dict[attack]! {
                let greaterDefenses = defenseValues.filter { $0 > defense }
                if greaterDefenses.count > 0 {
                    weak += 1
                }
            }
        }
        return weak
    }
}
