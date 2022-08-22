// 342. Power of Four
// https://leetcode.com/problems/power-of-four/

func isPowerOfFour(_ n: Int) -> Bool {
    var value = 1
    while true {
        if n == value {
            return true
        }

        value *= 4
        if value > n {
            return false
        }
    }
}

isPowerOfFour(16)
isPowerOfFour(5)
isPowerOfFour(1)
