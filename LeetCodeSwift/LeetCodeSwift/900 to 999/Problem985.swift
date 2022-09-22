//
//  Problem985.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/22/22.
//

// 985. Sum of Even Numbers After Queries
// https://leetcode.com/problems/sum-of-even-numbers-after-queries/

// https://leetcode.com/problems/sum-of-even-numbers-after-queries/discuss/654260/Swift

public class Problem985 {
    public func run() {
        let solve1 = sumEvenAfterQueries([1, 2, 3, 4], [[1, 0], [-3, 1], [-4, 0], [2, 3]])
        print("\(solve1) -- should be [8, 6, 2, 4]")
        let solve2 = sumEvenAfterQueries([1], [[4,0]])
        print("\(solve2) -- should be [0]")
    }

    public func test(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        return sumEvenAfterQueries(A, queries)
    }

    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        var A = A
        var evenSum = 0
        var result = [Int]()

        for num in A{
            if num % 2 == 0 {
                evenSum += num
            }
        }

        for query in queries{
            let val = query[0]
            let index = query[1]

            if A[index] % 2 == 0{
                evenSum -= A[index]
            }

            A[index] += val

            if A[index] % 2 == 0{
                evenSum += A[index]
            }

            result.append(evenSum)
        }

        return result
    }
}
