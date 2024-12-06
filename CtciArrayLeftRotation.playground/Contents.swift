import UIKit

/// https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

func rotLeft(a: [Int], d: Int) -> [Int] {
    if a.count < 2 { return a }
    var arr = a
    for i in 1 ... d {
        let first = arr[0]
        arr.removeFirst()
        arr.append(first)
    }

    return arr
}

rotLeft(a: [1, 2, 3, 4, 5], d: 4)
