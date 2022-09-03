//
//  Problem5.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/3/22.
//

// 5. Longest Palindromic Substring
// https://leetcode.com/problems/longest-palindromic-substring/

// I tried to understand the hints but ultimately came up empty and just borrowed this solution:
// https://leetcode.com/problems/longest-palindromic-substring/discuss/264917/Swift

public class Problem5 {
    public func run() {
        let solve1 = longestPalindrome("babad")
        print("\(solve1) -- should be bab")
        let solve2 = longestPalindrome("cbbd")
        print("\(solve2) -- should be bb")
        let solve3 = longestPalindrome(testData1)
        print("\(solve3) -- should be ranynar")
    }

    public func test(_ s: String) -> String {
        return longestPalindrome(s)
    }

    func longestPalindrome(_ s: String) -> String {
        guard s.count != 0 else{
            return ""
        }

        var memo = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        let s = Array(s).map{String($0)}

        var left = 0
        var right = 0
        var longest = (0, 0)

        for i in 0..<s.count{
            for j in i..<s.count{
                left = j - i
                right = j
                if i == 0 {
                    memo[left][right] = true
                    continue
                }

                if (s[left] == s[right]) && (memo[left+1][right-1] || left == right-1){
                    memo[left][right] = true
                    longest = (left, right)
                }
            }
        }

        return s[longest.0...longest.1].joined(separator: "")
    }

    func longestPalindrome_naive(_ s: String) -> String {
        func isPalindrome(_ s: String) -> Bool {
            let count = s.count
            guard let arr = Array(s) as? [Character] else { return false }
            for idx in 0...(count / 2) {
                if arr[idx] != arr[count - 1 - idx] {
                    return false
                }
            }

            return true
        }

        let count = s.count
        guard let sArr = Array(s) as? [Character] else { return "" }
        for length in stride(from: count, through: 2, by: -1) {
            for idx in 0...(count - length) {
                let newString = String(sArr[idx...(idx + length - 1)])
                if isPalindrome(newString) {
                    return newString
                }
            }
        }

        return String(s.first!)
    }

    public let testData1 = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
}
