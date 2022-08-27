//
//  Problem363.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/27/22.
//

// 363. Max Sum of Rectangle No Larger Than K
// https://leetcode.com/problems/max-sum-of-rectangle-no-larger-than-k/

// WOO HOO!!!
// Runtime: 2387 ms, faster than 100.00% of Swift online submissions for Max Sum of Rectangle No Larger Than K.
// Memory Usage: 14.5 MB, less than 100.00% of Swift online submissions for Max Sum of Rectangle No Larger Than K.

public class Problem363 {
    public func run() {
        let solve1 = maxSumSubmatrix([[1, 0, 1],[0, -2, 3]], 2)
        print("\(solve1) -- should be 2")
        let solve2 = maxSumSubmatrix([[2, 2, -1]], 3)
        print("\(solve2) -- should be 3")
        let solve3 = maxSumSubmatrix([[2,2,-1]], 0)
        print("\(solve3) -- should be -1")
        let solve4 = maxSumSubmatrix(testData1, -321)
        print("\(solve4) -- should be -323")
    }

    public func test(_ matrix: [[Int]], _ k: Int) -> Int {
        return maxSumSubmatrix(matrix, k)
    }

    func matrixSum(_ matrix: [[Int]], _ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
        if x1 == 0 && y1 == 0 {
            return matrix[y2][x2]
        } else if x1 == 0 {
            return matrix[y2][x2] - matrix[y1 - 1][x2]
        } else if y1 == 0 {
            return matrix[y2][x2] - matrix[y2][x1 - 1]
        } else {
            return matrix[y2][x2] - matrix[y1 - 1][x2] - matrix[y2][x1 - 1] + matrix[y1 - 1][x1 - 1]
        }
    }

    func maxSumSubmatrix(_ matrix: [[Int]], _ k: Int) -> Int {
        var sumMatrix = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        let rows = matrix.count
        let columns = matrix[0].count
        for y in 0..<rows {
            var rowTotal = 0
            for x in 0..<columns {
                if matrix[y][x] == k {
                    return k
                }

                rowTotal += matrix[y][x]
                if y == 0 {
                    sumMatrix[y][x] = rowTotal
                } else {
                    sumMatrix[y][x] = rowTotal + sumMatrix[y - 1][x]
                }

                if sumMatrix[y][x] == k {
                    return k
                }
            }
        }

        var maxK = Int.min
        for y1 in 0..<rows {
            for x1 in 0..<columns {
                for y2 in y1..<rows {
                    for x2 in x1..<columns {
                        let matrixSum = matrixSum(sumMatrix, x1, y1, x2, y2)
                        if matrixSum == k {
                            return k
                        } else if matrixSum < k && matrixSum > maxK {
                            maxK = matrixSum
                        }
                    }
                }
            }
        }

        return maxK
    }

    public let testData1 = [[-9,-6,-1,-7,-6,-5,-4,-7,-6,0],[-4,-9,-4,-7,-7,-4,-4,-6,-6,-6],[-2,-2,-6,-7,-7,0,-1,-1,-8,-2],[-5,-3,-1,-6,-1,-1,-6,-3,-4,-8],[-4,-1,0,-8,0,-9,-8,-7,-2,-4],[0,-3,-1,-7,-2,-5,-5,-5,-8,-7],[-2,0,-8,-2,-9,-2,0,0,-9,-6],[-3,-4,-3,-7,-2,-1,-9,-5,-7,-2],[-8,-3,-2,-8,-9,0,-7,-8,-9,-3],[-7,-4,-3,-3,-3,-1,0,-1,-8,-2]]
}
