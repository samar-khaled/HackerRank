import UIKit

/// https://www.hackerrank.com/challenges/lonely-integer/problem

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    var dic = [Int: Int]()
    for i in a {
        if let count = dic[i] {
            dic[i] = count + 1
        } else {
            dic[i] = 1
        }
    }

    return dic.filter { $0.value == 1 }.map { $0.key }.first ?? 0
}

lonelyinteger(a: [1, 2, 3, 4, 3, 2, 1])
