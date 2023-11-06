//
//  Problem1845.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/6/23.
//

// 1845. Seat Reservation Manager (Medium)
// https://leetcode.com/problems/seat-reservation-manager/

public class Problem1845 {
    public func run() {
        let commands1 = ["SeatManager", "reserve", "reserve", "unreserve", "reserve", "reserve", "reserve", "reserve", "unreserve"]
        let options1 = [[5], [], [], [2], [], [], [], [], [5]]
        let solve1 = runSeatReservationManager(commands1, options1)
        print("\(solve1) -- should be [null, 1, 2, null, 2, 3, 4, 5, null]")
    }

    public func test(_ commands: [String], _ options: [[Int]]) -> [Int?] {
        return runSeatReservationManager(commands, options)
    }

    class SeatManager {
        var seatSet = [Int]()

        init(_ n: Int) {
            for i in 1...n {
                seatSet.append(i)
            }
        }

        func reserve() -> Int {
            seatSet.removeFirst()
        }

        func unreserve(_ seatNumber: Int) {
            if let index = seatSet.firstIndex(where: { seat in
                seatNumber < seat
            }) {
                seatSet.insert(seatNumber, at: index)
            } else {
                seatSet.append(seatNumber)
            }
        }
    }

    func runSeatReservationManager(_ commands: [String], _ options: [[Int]]) -> [Int?] {
        var seatManager = SeatManager(1)
        var retval = [Int?]()
        for idx in 0..<commands.count {
            if commands[idx] == "SeatManager" {
                seatManager = SeatManager(options[idx][0])
                retval.append(nil)
            } else if commands[idx] == "reserve" {
                let availableSeat = seatManager.reserve()
                retval.append(availableSeat)
            } else {
                seatManager.unreserve(options[idx][0])
                retval.append(nil)
            }
        }

        return retval
    }
}
