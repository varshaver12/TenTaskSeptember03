/*
 
 Introduction
 The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

 Task
 Given a year, return the century it is in.
 
 */

import Foundation

// MARK: Solution 1

func century(_ year: Int) -> Int {
    return year % 100 == 0 ? year / 100 : year / 100 + 1
}

// MARK: Solution 2

func century1(_ year: Int) -> Int {
    return Int((Double(year) / 100).rounded(.up))
}
