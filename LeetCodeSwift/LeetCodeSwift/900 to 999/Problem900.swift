//
//  Problem900.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/29/24.
//

// 900. RLE Iterator (Medium)
// https://leetcode.com/problems/rle-iterator/

// WOO HOO!!!
// Runtime: 8 ms, Beats 100.00% of users with Swift
// Memory: 16.28 MB, Beats 100.00% of users with Swift

public class Problem900 {
    class RLEIterator {
        var intArray: [Int]
        var countArray: [Int]

        init(_ encoding: [Int]) {
            intArray = []
            countArray = []
            var encodingArray = encoding
            while encodingArray.count > 0 {
                intArray.append(encodingArray[1])
                countArray.append(encodingArray[0])
                encodingArray.removeFirst(2)
            }
        }

        func next(_ n: Int) -> Int {
            if countArray.count == 0
            {
                return -1
            }

            var deduct = n
            while deduct > 0 && countArray.count > 0 {
                if deduct > countArray[0] {
                    deduct -= countArray[0]
                    intArray.removeFirst()
                    countArray.removeFirst()
                } else {
                    let retval = intArray[0]
                    if deduct == countArray[0] {
                        intArray.removeFirst()
                        countArray.removeFirst()
                    } else {
                        countArray[0] -= deduct
                    }

                    return retval
                }
            }

            return -1
        }
    }

    public func run() {
        let solve1 = runIterator([3, 8, 0, 9, 2, 5], [2, 1, 1, 2])
        print("\(solve1) -- should be [8, 8, 5, -1]")
    }

    public func test(_ encoding: [Int], _ nextRequests: [Int]) -> [Int] {
        return runIterator(encoding, nextRequests)
    }

    func runIterator(_ encoding: [Int], _ nextRequests: [Int]) -> [Int] {
        let iterator = RLEIterator(encoding)
        var retval = [Int]()
        for request in nextRequests {
            retval.append(iterator.next(request))
        }

        return retval
    }
}
