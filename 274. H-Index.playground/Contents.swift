// 274. H-Index
// https://leetcode.com/problems/h-index/

import Cocoa

func hIndex(_ citations: [Int]) -> Int {
    if citations.count == 0 {
        return 0
    }
    
    var hIndex = 0
    let citationMax = citations.max()!
    if citationMax == 0 {
        return 0
    }
    
    for n in 1...citationMax {
        let aboveCount = citations.filter{$0 >= n}.count
        if aboveCount >= n {
            hIndex = n
        }
    }
    
    return hIndex
}

hIndex([0, 1, 0])
hIndex([3, 0, 1, 2, 5, 6])
