//
//  Problem36.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/22/22.
//

// 36. Valid Sudoku
// https://leetcode.com/problems/valid-sudoku/

public class Problem36 {
    public func run() {
        let solve1 = isValidSudoku(testData1)
        print("\(solve1) -- should be true")
        let solve2 = isValidSudoku(testData2)
        print("\(solve2) -- should be false")
        let solve3 = isValidSudoku(testData3)
        print("\(solve3) -- should be false")
    }

    public func test(_ board: [[Character]]) -> Bool {
        return isValidSudoku(board)
    }

    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for row in 0...8 {
            var charSet = Set<Character>()
            for col in 0...8 {
                if board[row][col] != "." {
                    if charSet.contains(board[row][col]) {
                        return false
                    } else {
                        charSet.insert(board[row][col])
                    }
                }
            }
        }

        for col in 0...8 {
            var charSet = Set<Character>()
            for row in 0...8 {
                if board[row][col] != "." {
                    if charSet.contains(board[row][col]) {
                        return false
                    } else {
                        charSet.insert(board[row][col])
                    }
                }
            }
        }

        var rowStart = 0
        var colStart = 0
        while rowStart < 9 {
            var charSet = Set<Character>()
            for rowOffset in 0...2 {
                for colOffset in 0...2 {
                    let c = board[rowStart + rowOffset][colStart + colOffset]
                    if c != "." {
                        if charSet.contains(c) {
                            return false
                        } else {
                            charSet.insert(c)
                        }
                    }
                }
            }

            colStart += 3
            if colStart == 9 {
                rowStart += 3
                colStart = 0
            }
        }

        return true
    }

    let testData1: [[Character]] =
    [["5","3",".",".","7",".",".",".","."]
     ,["6",".",".","1","9","5",".",".","."]
     ,[".","9","8",".",".",".",".","6","."]
     ,["8",".",".",".","6",".",".",".","3"]
     ,["4",".",".","8",".","3",".",".","1"]
     ,["7",".",".",".","2",".",".",".","6"]
     ,[".","6",".",".",".",".","2","8","."]
     ,[".",".",".","4","1","9",".",".","5"]
     ,[".",".",".",".","8",".",".","7","9"]]

    let testData2: [[Character]] =
    [["8","3",".",".","7",".",".",".","."]
     ,["6",".",".","1","9","5",".",".","."]
     ,[".","9","8",".",".",".",".","6","."]
     ,["8",".",".",".","6",".",".",".","3"]
     ,["4",".",".","8",".","3",".",".","1"]
     ,["7",".",".",".","2",".",".",".","6"]
     ,[".","6",".",".",".",".","2","8","."]
     ,[".",".",".","4","1","9",".",".","5"]
     ,[".",".",".",".","8",".",".","7","9"]]

    let testData3: [[Character]] =
    [["8","3",".",".","7",".",".",".","."]
     ,["6",".",".","1","9","5",".",".","."]
     ,[".","9","8",".",".",".",".","6","."]
     ,["1",".",".",".","6",".",".",".","3"]
     ,["4",".",".","8",".","3",".",".","1"]
     ,["7",".",".",".","2",".",".",".","6"]
     ,[".","6",".",".",".",".","2","8","."]
     ,[".",".",".","4","1","9",".",".","5"]
     ,[".",".",".",".","8",".",".","7","9"]]
}
