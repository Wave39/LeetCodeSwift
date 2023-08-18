//
//  Problem10.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/18/23.
//

// 10. Regular Expression Matching (Hard)
// https://leetcode.com/problems/regular-expression-matching/

// https://leetcode.com/problems/regular-expression-matching/solutions/2383634/fastest-solution-explained-0ms-100-o-n-time-complexity-o-n-space-complexity/

public class Problem10 {
    public func run() {
        let solve1 = isMatch("aa", "a")
        print("\(solve1) -- should be false")
        let solve2 = isMatch("aa", "a*")
        print("\(solve2) -- should be true")
        let solve3 = isMatch("ab", ".*")
        print("\(solve3) -- should be true")
        let solve4 = isMatch("ab", ".*c")
        print("\(solve4) -- should be false")
        let solve5 = isMatch("aaa", "a*a")
        print("\(solve5) -- should be true")
        let solve6 = isMatch("aaa", "ab*a*c*a")
        print("\(solve6) -- should be true")
    }

    public func test(_ s: String, _ p: String) -> Bool {
        return isMatch(s, p)
    }

    func isMatch(_ s: String, _ p: String) -> Bool {
        var visit = [[Bool]]()
        let sLength = s.count
        let pCount = p.count

        for _ in 0...(sLength + 1) {
            visit.append([Bool](repeating: false, count: pCount + 1))
        }

        visit[sLength][pCount] = true

        for i in stride(from: sLength, through: 0, by: -1) {
            for j in stride(from: pCount - 1, through: 0, by: -1) {
                let arrS = Array(s)
                let arrP = Array(p)
                let first = i < sLength && (arrS[i] == arrP[j] || arrP[j] == ".")
                if j + 1 < pCount && arrP[j + 1] == "*" {
                    visit[i][j] = visit[i][j + 2] || first && visit[i + 1][j]
                } else {
                    visit[i][j] = first && visit[i + 1][j + 1]
                }
            }
        }

        return visit[0][0]
    }

    func isMatch_naive(_ s: String, _ p: String) -> Bool {
        struct Token {
            var char: Character = " "
            var repeater = false
        }

        var tokens = [Token]()
        for char in p {
            if char == "*" {
                tokens[tokens.count - 1].repeater = true
            } else {
                let token = Token(char: char, repeater: false)
                tokens.append(token)
            }
        }

        var changesMade = true
        while changesMade {
            changesMade = false
            for idx in 0..<tokens.count - 1 {
                if tokens[idx].char == tokens[idx + 1].char && tokens[idx].repeater {
                    tokens.remove(at: idx + 1)
                    changesMade = true
                    continue
                }
            }
        }

        var theString = s
        while !theString.isEmpty && !tokens.isEmpty {
            let token = tokens.removeFirst()
            if token.char == "." {
                if token.repeater {
                    if tokens.count == 0 {
                        return true
                    } else {
                        while !theString.isEmpty && theString.first != tokens[0].char {
                            theString.removeFirst()
                        }
                    }
                } else {
                    theString.removeFirst()
                }
            } else {
                if token.repeater {
                    while theString.first == token.char {
                        theString.removeFirst()
                    }
                } else {
                    if theString.first != token.char {
                        return false
                    }

                    theString.removeFirst()
                }
            }
        }

        return theString.isEmpty && tokens.isEmpty
    }
}
