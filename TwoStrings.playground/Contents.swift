import UIKit

/// https://www.hackerrank.com/challenges/two-strings/problem

func twoStrings(s1: String, s2: String) -> String {
    var charCount = [Character: Int]()
    var s1Array = Array(s1)
    for char in s1Array {
        if charCount[char] != nil {
            charCount[char]! += 1
        } else {
            charCount[char] = 1
        }
    }

    var s2Array = Array(s2)
    for char in s2Array {
        if charCount[char] != nil {
            return "YES"
        }
    }
    return "NO"
}

twoStrings(s1: "hello", s2: "world")
twoStrings(s1: "hi", s2: "world")
