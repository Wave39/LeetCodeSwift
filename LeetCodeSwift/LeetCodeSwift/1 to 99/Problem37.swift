//
//  Problem37.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/13/23.
//

// 37. Sudoku Solver (Hard)
// https://leetcode.com/problems/valid-sudoku/

// I didn't even try this one myself.
// https://leetcode.com/problems/sudoku-solver/solutions/1351806/solution-swift-sudoku-solver/

public class Problem37 {
    public func run() {
        solveSudoku(&testData1)
        printBoard(testData1)
        print("should be:")
        printBoard(solutionData1)
    }

    public func test(_ board: inout [[Character]]) {
        return solveSudoku(&board)
    }

    private func printBoard(_ board: [[Character]]) {
        print("+---+---+---+")
        var rIdx = 0
        for r in board {
            var rowString = String(r)
            rowString.insert("|", at: rowString.index(rowString.startIndex, offsetBy: 3))
            rowString.insert("|", at: rowString.index(rowString.startIndex, offsetBy: 7))
            print("|\(rowString)|")
            rIdx += 1
            if rIdx == 3 || rIdx == 6 {
                print("|---+---+---|")
            }
        }
        print("+---+---+---+")
    }

    func solveSudoku(_ board: inout [[Character]]) {
        guard board.count != 0 || board[0].count != 0 else { return }
        // printBoard(board)
        _ = helper(&board)
    }

    private func helper(_ board: inout [[Character]]) -> Bool {
        for r in 0..<board.count {
            for c in 0..<board[0].count where board[r][c] == "." {
                for n in 1...9 where isValid(board, Character("\(n)"), r, c) {
                    board[r][c] = Character("\(n)")
                    if helper(&board) {
                        // printBoard(board)
                        return true
                    } else {
                        board[r][c] = "."
                    }
                }
                return false
            }
        }

        // printBoard(board)
        return true
    }

    private func isValid(_ board: [[Character]], _ ch: Character, _ r: Int,  _ c: Int) -> Bool {
        for i in 0...8 {
            if board[r][i] == ch || board[i][c] == ch { return false }
            if board[(r / 3) * 3 + i / 3][(c / 3) * 3 + i % 3] == ch { return false }
        }
        return true
    }

    var testData1: [[Character]] =
    [["5","3",".",".","7",".",".",".","."]
     ,["6",".",".","1","9","5",".",".","."]
     ,[".","9","8",".",".",".",".","6","."]
     ,["8",".",".",".","6",".",".",".","3"]
     ,["4",".",".","8",".","3",".",".","1"]
     ,["7",".",".",".","2",".",".",".","6"]
     ,[".","6",".",".",".",".","2","8","."]
     ,[".",".",".","4","1","9",".",".","5"]
     ,[".",".",".",".","8",".",".","7","9"]]

    let solutionData1: [[Character]] =
    [["5","3","4","6","7","8","9","1","2"],
     ["6","7","2","1","9","5","3","4","8"],
     ["1","9","8","3","4","2","5","6","7"],
     ["8","5","9","7","6","1","4","2","3"],
     ["4","2","6","8","5","3","7","9","1"],
     ["7","1","3","9","2","4","8","5","6"],
     ["9","6","1","5","3","7","2","8","4"],
     ["2","8","7","4","1","9","6","3","5"],
     ["3","4","5","2","8","6","1","7","9"]]
}
