import UIKit

/// https://www.hackerrank.com/challenges/sock-merchant/problem

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var dic = [Int: Int]()

    for i in ar {
        dic[i] = (dic[i] ?? 0) + 1
    }

    var count = 0
    for values in dic.values {
        let pair = Int(values / 2)
        count += pair
    }
    return count
}

sockMerchant(n: 7, ar: [1, 2, 1, 2, 1, 3, 2])
