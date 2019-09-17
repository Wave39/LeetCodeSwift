// 476. Number Complement
// https://leetcode.com/problems/number-complement/

import Cocoa

func findComplement(_ num: Int) -> Int {
    let binaryString = String(num, radix: 2)
    var complementString = ""
    for c in binaryString {
        if c == "1" {
            complementString += "0"
        } else {
            complementString += "1"
        }
    }
    
    return Int(complementString, radix: 2)!
}

findComplement(5)       // 2
findComplement(1)       // 0
