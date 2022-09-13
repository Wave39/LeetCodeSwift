//
//  Problem733.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 733. Flood Fill
// https://leetcode.com/problems/flood-fill/

// Input: image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1, sc = 1, color = 2
//Output: [[2,2,2],[2,2,0],[2,0,1]]
//Explanation: From the center of the image with position (sr, sc) = (1, 1) (i.e., the red pixel), all pixels connected by a path of the same color as the starting pixel (i.e., the blue pixels) are colored with the new color.
//Note the bottom corner is not colored 2, because it is not 4-directionally connected to the starting pixel.
//Example 2:
//
//Input: image = [[0,0,0],[0,0,0]], sr = 0, sc = 0, color = 0
//Output: [[0,0,0],[0,0,0]]
//Explanation: The starting pixel is already colored 0, so no changes are made to the image.

public class Problem733 {
    public func run() {
        let solve1 = floodFill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2)
        print("\(solve1) -- should be [[2, 2, 2], [2, 2, 0], [2, 0, 1]]")
        let solve2 = floodFill([[0, 0, 0], [0, 0, 0]], 0, 0, 0)
        print("\(solve2) -- should be [[0, 0, 0], [0, 0, 0]]")
    }

    public func test(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        return floodFill(image, sr, sc, color)
    }

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        let startingPixel = image[sr][sc]
        if startingPixel == color {
            return image
        }

        let rows = image.count
        let columns = image[0].count

        func setColor(_ image: inout [[Int]], _ row: Int, _ column: Int, _ color: Int) {
            image[row][column] = color

            if row > 0 && image[row - 1][column] == startingPixel {
                setColor(&image, row - 1, column, color)
            }

            if row < (rows - 1) && image[row + 1][column] == startingPixel {
                setColor(&image, row + 1, column, color)
            }

            if column > 0 && image[row][column - 1] == startingPixel {
                setColor(&image, row, column - 1, color)
            }

            if column < (columns - 1) && image[row][column + 1] == startingPixel {
                setColor(&image, row, column + 1, color)
            }
        }

        var newImage = image
        setColor(&newImage, sr, sc, color)
        return newImage
    }
}
