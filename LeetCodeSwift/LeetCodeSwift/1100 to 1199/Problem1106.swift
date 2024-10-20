//
//  Problem1106.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/20/24.
//

// 1106. Parsing A Boolean Expression (Hard)
// https://leetcode.com/problems/parsing-a-boolean-expression/

// https://leetcode.com/problems/parsing-a-boolean-expression/solutions/5943456/swift-recursive-solution/

public class Problem1106 {
    public func run() {
        let solve1 = parseBoolExpr("&(|(f))")
        print("\(solve1) -- should be false")
        let solve2 = parseBoolExpr("|(f,f,f,t)")
        print("\(solve2) -- should be true")
        let solve3 = parseBoolExpr("!(&(f,t))")
        print("\(solve3) -- should be true")
    }

    public func test(_ expression: String) -> Bool {
        return parseBoolExpr(expression)
    }

    func parseBoolExpr(_ expression: String) -> Bool
    {
        let ex = Array(expression)
        return parseExpr(0).result

        func parseExpr(_ startIndex: Int) -> (result: Bool, endIndex: Int)
        {
            switch ex[startIndex]
            {
            case "t": return (true, startIndex + 1)
            case "f": return (false, startIndex + 1)

            case "!":
                let innerRes = parseExpr(startIndex + 2)
                return (!innerRes.result, innerRes.endIndex + 1)

            default:
                let isOR = ex[startIndex] == "|"
                var ind = startIndex + 2
                while true
                {
                    let innerRes = parseExpr(ind)
                    if innerRes.result == isOR
                    {
                        ind = innerRes.endIndex
                        var parentheses = 1
                        while parentheses != 0
                        {
                            if ex[ind] == ")" { parentheses -= 1 }
                            else if ex[ind] == "(" { parentheses += 1 }
                            ind += 1
                        }
                        return (isOR, ind)
                    }

                    if ex[innerRes.endIndex] == ")" {
                        return (!isOR, innerRes.endIndex + 1)
                    } else {
                        ind = innerRes.endIndex + 1
                    }
                }
            }
        }
    }
}
