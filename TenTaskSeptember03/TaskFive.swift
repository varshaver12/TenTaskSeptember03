/*
 
 Your goal is to return multiplication table for number that is always an integer from 1 to 10.
 
 */

import Foundation

// MARK: Solution 1

func multiTable(_ number: Int) -> String {
    return "1 * \(number) = \(number)\n2 * \(number) = \(number * 2)\n3 * \(number) = \(number * 3)\n4 * \(number) = \(number * 4)\n5 * \(number) = \(number * 5)\n6 * \(number) = \(number * 6)\n7 * \(number) = \(number * 7)\n8 * \(number) = \(number * 8)\n9 * \(number) = \(number * 9)\n10 * \(number) = \(number * 10)"
}

// MARK: Solution 2

func multiTable1(_ number: Int) -> String {
    (1...10).map {"\($0) * \(number) = \($0 * number)"}.joined(separator: "\n")
}
