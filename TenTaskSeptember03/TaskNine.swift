/*
 
 Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):

 Example: (Input1, Input2 -->Output)
 
 */

import Foundation

// MARK: Solution 1

func sumStr(_ a: String, _ b: String) -> String {
    String((Int(a) != nil ? Int(a)! : 0) + (Int(b) != nil ? Int(b)! : 0))
}

// MARK: Solution 2

func sumStr1(_ a: String, _ b: String) -> String {
    String((Int(a) ?? 0) + (Int(b) ?? 0))
}
