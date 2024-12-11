import UIKit

/// https://www.hackerrank.com/challenges/pangrams/problem

func pangrams(s: String) -> String {
    // Write your code here

    let array = Array(s)
    var dic = [String: Int]()

    for char in array {
        let lower = char.lowercased()
        if let count = dic[lower] {
            dic[lower] = count + 1
        } else {
            dic[lower] = 1
        }
    }
    dic.removeValue(forKey: " ")

    if dic.count == 26 {
        return "pangram"
    } else {
        return "not pangram"
    }
}

pangrams(s: "We promptly judged antique ivory buckles for the prize")
pangrams(s: "We promptly judged antique ivory buckles for the next prize")
