import UIKit

/// https://www.hackerrank.com/challenges/two-arrays/problem

func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    // Write your code here
    var a = A.sorted()
    var b = B.sorted(by: >)

    for i in 0 ... a.count - 1 {
        if a[i] + b[i] >= k {
            continue
        } else {
            return "NO"
        }
    }
    return "YES"
}

twoArrays(k: 10, A: [2, 1, 3], B: [7, 8, 9])
twoArrays(k: 5, A: [1, 2, 2, 1], B: [3, 3, 3, 4])
twoArrays(k: 9, A: [3, 6, 8, 5, 9, 9, 4, 8, 4, 7], B: [5, 1, 0, 1, 6, 4, 1, 7, 4, 3])
