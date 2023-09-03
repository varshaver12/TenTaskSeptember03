/*
 
 Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
 In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained (Read the notes for more detail about it)
 The numbers are always positive.
 The numbers are in the range (1  ≤  a, b, c  ≤  10).
 You can use the same operation more than once.
 It's not necessary to place all the signs and brackets.
 Repetition in numbers may occur .
 You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.
 
 */

import Foundation

// MARK: Solution 1

func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let aNumberMore1 = a > 1
    let bNumberMore1 = b > 1
    let cNumberMore1 = c > 1
    
    if aNumberMore1 {
        if cNumberMore1 {
            if bNumberMore1 {
                return a * b * c
            } else if a > c {
                return a * (b + c)
            } else {
                return (a + b) * c
            }
        } else {
            return a * (b + c)
        }
    } else {
        if cNumberMore1 {
            return (a + b) * c
        } else {
            return a + b + c
        }
    }
}

// MARK: Solution 2

func expressionMatter2(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max(a + b + c, a * (b + c), (a + b) * c, a * b * c)
}
