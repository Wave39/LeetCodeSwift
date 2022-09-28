//
//  Problem438.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/27/22.
//

// 438. Find All Anagrams in a String
// https://leetcode.com/problems/find-all-anagrams-in-a-string/

// https://leetcode.com/problems/find-all-anagrams-in-a-string/discuss/239146/Swift-sliding-window

public class Problem438 {
    public func run() {
        let solve1 = findAnagrams("cbaebabacd", "abc")
        print("\(solve1) -- should be [0, 6]")
        let solve2 = findAnagrams("abab", "ab")
        print("\(solve2) -- should be [0, 1, 2]")
        let solve3 = findAnagrams("aaaaaaaaaa", "aaaaaaaaaaaaa")
        print("\(solve3) -- should be []")
    }

    public func test(_ s: String, _ p: String) -> [Int] {
        return findAnagrams(s, p)
    }

    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let sLen = s.utf8.count
        let pLen = p.utf8.count

        guard sLen >= pLen else { return [] }

        var map = [Int](repeating: 0, count: 26)
        p.utf8.forEach({ map[Int($0) - 97] += 1 })

        var left = 0
        var right = 0
        var count = 0

        var result = [Int]()
        let sValues = Array(s.utf8)
        while right < sLen {
            let rightIndex = Int(sValues[right]) - 97
            if map[rightIndex] > 0 {
                map[rightIndex] -= 1
                count += 1
                right += 1
            } else {
                let leftIndex = Int(sValues[left]) - 97
                map[leftIndex] += 1
                count -= 1
                left += 1
            }
            if count == pLen {
                result.append(left)
            }
        }

        return result
    }

    func findAnagrams_naive(_ s: String, _ p: String) -> [Int] {
        var retval = [Int]()
        let pSorted = String(p.sorted())
        let pCount = p.count
        if pCount > s.count {
            return []
        }

        let sArray: [Character] = Array(s)
        for idx in 0...s.count - pCount {
            let str = String(String(sArray[idx..<(idx + pCount)]).sorted())
            if str == pSorted {
                retval.append(idx)
            }
        }

        return retval
    }
}
