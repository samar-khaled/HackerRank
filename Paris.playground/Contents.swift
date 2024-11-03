import UIKit

/// https://www.hackerrank.com/challenges/pairs/problem

func pairs(k: Int, arr: [Int]) -> Int {

    var dic = [Int: Int]()
    var count = 0
    var arr = arr.sorted(by: <)
    for n in arr {
        dic[n] = 1
        if dic[n + k] != nil {
            count += 1
        } else if dic[n - k] != nil {
            count += 1
        }
    }
    return count
}

pairs(k: 2, arr: [1, 5, 3, 4, 2])
