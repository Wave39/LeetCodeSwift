//
//  Problem38.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/8/23.
//

// 38. Count and Say (Medium)
// https://leetcode.com/problems/count-and-say/

public class Problem38 {
    public func run() {
        let solve1 = countAndSay(1)
        print("\(solve1) -- should be 1")
        let solve2 = countAndSay(4)
        print("\(solve2) -- should be 1211")
    }

    public func test(_ n: Int) -> String {
        return countAndSay(n)
    }

    func countAndSay(_ n: Int) -> String {
        func getCharacterArray(_ str: String) -> [(Int, Int)] {
            var retval = [(Int, Int)]()
            var str = str
            var currentCharacter: Character
            var lastCharacter: Character = "`"
            while str.count > 0 {
                currentCharacter = str.removeFirst()
                if currentCharacter == lastCharacter {
                    retval[retval.count - 1].1 += 1
                } else {
                    retval.append((Int(String(currentCharacter))!, 1))
                    lastCharacter = currentCharacter
                }
            }

            return retval
        }

        if n == 1 {
            return "1"
        }

        var str = "1"
        for _ in 2...n {
            let arr = getCharacterArray(str)
            str = ""
            for entry in arr {
                str += "\(entry.1)\(entry.0)"
            }
        }

        return str
    }
}
