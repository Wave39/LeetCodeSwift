//
//  Problem942.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/31/22.
//

// 942. DI String Match (Easy)
// https://leetcode.com/problems/di-string-match/

public class Problem942 {
    public func run() {
        let solve1 = diStringMatch("IDID")
        print("\(solve1) -- should be [0, 4, 1, 3, 2]")
        let solve2 = diStringMatch("III")
        print("\(solve2) -- should be [0, 1, 2, 3]")
        let solve3 = diStringMatch("DDI")
        print("\(solve3) -- should be [3, 2, 0, 1]")
    }

    public func test(_ s: String) -> [Int] {
        return diStringMatch(s)
    }

    func diStringMatch(_ s: String) -> [Int] {
        var numberSet = Set<Int>()
        for n in 0...s.count {
            numberSet.insert(n)
        }

        var retval = [Int]()
        for c in s {
            let v = (c == "I" ? numberSet.min()! : numberSet.max()!)
            retval.append(v)
            numberSet.remove(v)
        }

        retval.append(numberSet.first!)
        return retval
    }
}
