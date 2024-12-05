import UIKit

/// https://www.hackerrank.com/challenges/repeated-string/problem

func repeatedString(s: String, n: Int) -> Int {
    // Write your code here

    let count = s.count
    let array = Array(s)
    var noOfAs = array.filter { $0 == "a" }.count
    let noRepeated = Int(n / count)
    noOfAs = noOfAs * noRepeated

    let mode = n % count
    if mode != 0 {
        for i in 0 ... mode - 1 {
            if array[i] == "a" {
                noOfAs += 1
            }
        }
    }
    return noOfAs
}

repeatedString(s: "aba", n: 10)
repeatedString(s: "a", n: 1000000000000)
repeatedString(s: "aab", n: 882787)
