//
//  Problem967.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

// 967. Numbers With Same Consecutive Differences (Medium)
// https://leetcode.com/problems/numbers-with-same-consecutive-differences/

public class Problem967 {
    public func run() {
        let solve1 = numsSameConsecDiff(3, 7)
        print("\(solve1) -- should be [181, 292, 707, 818, 929]")
        let solve2 = numsSameConsecDiff(2, 1)
        print("\(solve2) -- should be [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98]")
        let solve3 = numsSameConsecDiff(3, 0)
        print("\(solve3) -- should be [111, 222, 333, 444, 555, 666, 777, 888, 999]")
    }

    public func test(_ n: Int, _ k: Int) -> [Int] {
        return numsSameConsecDiff(n, k)
    }

    // This dictionary of 2D arrays contains the original digit (the dictionary key), the value of k as the first
    // dimension of the array, and then a variable number of entries for the second dimension corresponding to
    // the possible values of the original digit when adding or subtracting k.
    // So for example, if your current digit is a 3, and your k value is 1, you get the2DArray at nextDigitDict[3],
    // get the array at the2DArray[1], and you get back an array with 2 elements in it, 2 and 4.
    // These are then the next two possible digits for your number.

    // k:    +/- 0     +/- 1     +/- 2     +/- 3     +/- 4     +/- 5     +/- 6     +/- 7     +/- 8     +/- 9
    let nextDigitDict = [
        0: [ [0],      [1],      [2],      [3],      [4],      [5],      [6],      [7],      [8],      [9] ],
        1: [ [1],      [0, 2],   [3],      [4],      [5],      [6],      [7],      [8],      [9],      []  ],
        2: [ [2],      [1, 3],   [0, 4],   [5],      [6],      [7],      [8],      [9],      [],       []  ],
        3: [ [3],      [2, 4],   [1, 5],   [0, 6],   [7],      [8],      [9],      [],       [],       []  ],
        4: [ [4],      [3, 5],   [2, 6],   [1, 7],   [0, 8],   [9],      [],       [],       [],       []  ],
        5: [ [5],      [4, 6],   [3, 7],   [2, 8],   [1, 9],   [0],      [],       [],       [],       []  ],
        6: [ [6],      [5, 7],   [4, 8],   [3, 9],   [2],      [1],      [0],      [],       [],       []  ],
        7: [ [7],      [6, 8],   [5, 9],   [4],      [3],      [2],      [1],      [0],      [],       []  ],
        8: [ [8],      [7, 9],   [6],      [5],      [4],      [3],      [2],      [1],      [0],      []  ],
        9: [ [9],      [8],      [7],      [6],      [5],      [4],      [3],      [2],      [1],      [0] ]
    ]

    func numsSameConsecDiff(_ n: Int, _ k: Int) -> [Int] {
        var retval = [Int]()

        func processDigits(_ digits: [Int]) {
            if digits.count == n {
                let x = digits.reduce(into: "", { $0 += String($1) })
                retval.append(Int(x)!)
                return
            }

            let lastDigit = digits.last!
            let digitArray = nextDigitDict[lastDigit]!
            let nextDigits = digitArray[k]
            if nextDigits.isEmpty {
                return
            }

            for digit in nextDigits {
                var newDigits = digits
                newDigits.append(digit)
                processDigits(newDigits)
            }
        }

        for leadingDigit in 1...9 {
            processDigits([leadingDigit])
        }

        return retval
    }
}
