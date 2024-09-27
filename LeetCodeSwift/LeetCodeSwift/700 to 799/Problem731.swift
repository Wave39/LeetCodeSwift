//
//  Problem731.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/27/24.
//

// 731. My Calendar II (Medium)
// https://leetcode.com/problems/my-calendar-ii/

// https://leetcode.com/problems/my-calendar-ii/solutions/5838145/swift-clean/

public class Problem731 {
    public func run() {
        let solve1 = test(["MyCalendarTwo", "book", "book", "book", "book", "book", "book"], [[], [10, 20], [50, 60], [10, 40], [5, 15], [5, 10], [25, 55]])
        print("\(solve1) -- should be [nil, true, true, true, false, true, true]")
    }

    class MyCalendarTwo {
        var singleBookings = [Range<Int>]()
        var doubleBookings = [Range<Int>]()

        func book(_ start: Int, _ end: Int) -> Bool {
            let event = start..<end
            guard doubleBookings.first(where: { event.overlaps($0) }) == nil else { return false }
            for other in singleBookings where event.overlaps(other) {
                let lower = max(event.lowerBound, other.lowerBound)
                let upper = min(event.upperBound, other.upperBound)
                doubleBookings.append(lower..<upper)
            }

            singleBookings.append(event)
            return true
        }
    }

    public func test(_ commands: [String], _ times: [[Int]]) -> [Bool?] {
        var calendar = MyCalendarTwo()
        var retval: [Bool?] = [ nil ]
        for (commandIndex, command) in commands.enumerated() {
            switch command {
            case "MyCalendarTwo":
                calendar = .init()
            case "book":
                let result = calendar.book(times[commandIndex].first!, times[commandIndex].last!)
                retval.append(result)
            default: break
            }
        }

        return retval
    }
}
