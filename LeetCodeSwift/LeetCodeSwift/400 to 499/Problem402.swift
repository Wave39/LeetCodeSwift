//
//  Problem402.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/11/24.
//

// 402. Remove K Digits (Medium)
// https://leetcode.com/problems/remove-k-digits/

public class Problem402 {
    public func run() {
        let solve1 = removeKdigits("1432219", 3)
        print("\(solve1) -- should be 1219")
        let solve2 = removeKdigits("10200", 1)
        print("\(solve2) -- should be 200")
        let solve3 = removeKdigits("10", 2)
        print("\(solve3) -- should be 0")
        let solve4 = removeKdigits("10001", 4)
        print("\(solve4) -- should be 0")
    }

    public func test(_ num: String, _ k: Int) -> String {
        return removeKdigits(num, k)
    }

    func removeKdigits(_ num: String, _ k: Int) -> String {
        // https://leetcode.com/problems/remove-k-digits/solutions/5006216/swift-fast/
        var k = k, stack = [Character]()
        for c in num {
            while k > 0 && !stack.isEmpty && stack.last! > c {
                k -= 1
                stack.removeLast()
            }
            stack.append(c)
        }
        stack.removeLast(k)
        while let first = stack.first, first == "0" {
            stack.removeFirst()
        }
        return stack.isEmpty ? "0" : String(stack)
    }

    func removeKdigits_naive(_ num: String, _ k: Int) -> String {
        if num.count == k {
            return "0"
        }

        var num = num
        for _ in 1...k {
            var numArray = Array(num)
            if numArray.count == 1 {
                return "0"
            }

            var minValue = Int(num)! // fails here with really large numbers
            for idx in 0..<numArray.count {
                let extract = numArray.remove(at: idx)
                let newValue = Int(String(numArray))!
                if newValue < minValue {
                    minValue = newValue
                }

                numArray.insert(extract, at: idx)
            }

            if minValue == 0 {
                return "0"
            }

            num = "\(minValue)"
        }

        return num
    }
}
