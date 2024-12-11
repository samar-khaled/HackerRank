import UIKit

/// https://www.hackerrank.com/challenges/sparse-arrays/problem

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    // Write your code here
    var dic = [String: Int]()

    for string in strings {
        if let count = dic[string] {
            dic[string] = count + 1
        } else {
            dic[string] = 1
        }
    }

    var result = [Int]()
    for query in queries {
        if let count = dic[query] {
            result.append(count)
        } else {
            result.append(0)
        }
    }

    return result
}

matchingStrings(strings: ["def", "de", "fgh"], queries: ["de", "lmn", "fgh"])
