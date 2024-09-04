//
//  Problem874.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/4/24.
//

// 874. Walking Robot Simulation (Medium)
// https://leetcode.com/problems/walking-robot-simulation/

// WOO HOO!!!
// Runtime: 146 ms, Beats 100.00%
// Memory: 17.36 MB, Beats 25.00%

public class Problem874 {
    public func run() {
        let solve1 = robotSim([4, -1, 3], [])
        print("\(solve1) -- should be 25")
        let solve2 = robotSim([4, -1, 4, -2, 4], [[2, 4]])
        print("\(solve2) -- should be 65")
        let solve3 = robotSim([6, -1, -1, 6], [])
        print("\(solve3) -- should be 36")
    }
    
    public func test(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        return robotSim(commands, obstacles)
    }

    struct Point2D: Hashable {
        var x = 0
        var y = 0

        static func + (left: Point2D, right: Point2D) -> Point2D {
            Point2D(x: left.x + right.x, y: left.y + right.y)
        }
    }

    enum Direction {
        case north
        case south
        case east
        case west

        func motion() -> Point2D {
            switch self {
            case .north:
                return Point2D(x: 0, y: 1)
            case .south:
                return Point2D(x: 0, y: -1)
            case .east:
                return Point2D(x: 1, y: 0)
            default:
                return Point2D(x: -1, y: 0)
            }
        }

        func turn(left: Bool) -> Direction {
            let directionsArray = [ Direction.north, Direction.east, Direction.south, Direction.west ]
            var currentIdx = Int(directionsArray.firstIndex(of: self)!)
            if left {
                currentIdx -= 1
                if currentIdx < 0 {
                    currentIdx = 3
                }
            } else {
                currentIdx += 1
                if currentIdx > 3 {
                    currentIdx = 0
                }
            }

            return directionsArray[currentIdx]
        }
    }

    func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
        var obstacleSet = Set<Point2D>()
        for obs in obstacles {
            obstacleSet.insert(Point2D(x: obs[0], y: obs[1]))
        }

        var position = Point2D(x: 0, y: 0)
        var maxDistance = 0
        var direction = Direction.north
        for command in commands {
            if command == -2 {
                direction = direction.turn(left: true)
            } else if command == -1 {
                direction = direction.turn(left: false)
            } else {
                let motion = direction.motion()
                for _ in 1...command {
                    let nextPosition = position + motion
                    if obstacleSet.contains(nextPosition) {
                        break
                    } else {
                        position = nextPosition
                    }
                }

                maxDistance = max(maxDistance, position.x * position.x + position.y * position.y)
            }
        }

        return maxDistance
    }
}
