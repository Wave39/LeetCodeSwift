//
//  Problem65.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/21/23.
//

// 65. Valid Number (Hard)
// https://leetcode.com/problems/valid-number/

public class Problem65 {
    public func run() {
        for validNumber in ["0", "2", "0089", "-0.1", "+3.14", "4.", "-.9", "2e10", "-90E3", "3e+7", "+6e-1", "53.5e93", "-123.456e789"] {
            let solve = isNumber(validNumber)
            print("\(validNumber) returns \(solve ? "TRUE" : "false") -- should be TRUE")
        }

        for invalidNumber in ["e", ".", "abc", "1a", "1e", "e3", "99e2.5", "--6", "-+3", "95a54e53", ".e1", "4e+", "+.", "e.7e5", "2e+60++604", "+.E3"] {
            let solve = isNumber(invalidNumber)
            print("\(invalidNumber) returns \(solve ? "TRUE" : "false") -- should be false")
        }
    }

    public func test(_ s: String) -> Bool {
        return isNumber(s)
    }

    func isNumber(_ s: String) -> Bool {
        func isValid(_ s: String, allowDecimal: Bool) -> Bool {
            if s == "." || s == "+" || s == "-" {
                return false
            }

            let numberCharacters = s.filter { "1234567890".contains($0) }
            if numberCharacters.count == 0 {
                return false
            }

            let signCharacters = s.filter { "+-".contains($0) }
            if signCharacters.count == 1 {
                if !s.hasPrefix("+") && !s.hasPrefix("-") {
                    return false
                }
            } else if signCharacters.count > 1 {
                return false
            }

            if !allowDecimal {
                if s.contains(".") {
                    return false
                }
            }

            if (s.contains("+") && !s.hasPrefix("+")) || (s.contains("-") && !s.hasPrefix("-")) {
                return false
            }

            return true
        }

        if s == "." {
            return false
        }

        let s = s.lowercased()
        let numberCharacters = s.filter { "1234567890".contains($0) }
        if numberCharacters.count == 0 {
            return false
        }

        let invalidCharacters = s.filter { !"1234567890-+e.".contains($0) }
        if invalidCharacters.count > 0 {
            return false
        }

        let decimalPoints = s.filter { $0 == "." }.count
        if decimalPoints > 1 {
            return false
        }

        let eCharacters = s.filter { $0 == "e" }.count
        if eCharacters > 1 {
            return false
        }

        if s.contains("e") {
            let components = s.split(separator: "e")
            if components.count != 2 {
                return false
            }

            if components[1].contains(".") {
                return false
            }

            return isValid(String(components[0]), allowDecimal: true) && isValid(String(components[1]), allowDecimal: false)
        } else {
            return isValid(s, allowDecimal: true)
        }
    }
}
