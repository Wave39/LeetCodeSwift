// 304. Range Sum Query 2D - Immutable
// https://leetcode.com/problems/range-sum-query-2d-immutable/

import Cocoa

class NumMatrix {
    
    var m: [[Int]]
    init(_ matrix: [[Int]]) {
        m = matrix
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var t = 0
        for r in row1...row2 {
            for c in col1...col2 {
                t = t + m[r][c]
            }
        }
        
        return t
    }
}

let matrix = NumMatrix([
    [3, 0, 1, 4, 2],
    [5, 6, 3, 2, 1],
    [1, 2, 0, 1, 5],
    [4, 1, 0, 1, 7],
    [1, 0, 3, 0, 5]
])
matrix.sumRegion(2, 1, 4, 3) // 8
matrix.sumRegion(1, 1, 2, 2) // 11
matrix.sumRegion(1, 2, 2, 4) // 12
