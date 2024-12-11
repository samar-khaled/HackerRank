import UIKit

/// https://www.hackerrank.com/challenges/diagonal-difference/problem

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var rhsIndex = 0
    var rhsSum = 0
    var lhsIndex = arr[0].count - 1
    var lhsSum = 0

    for subArr in arr {
        lhsSum += subArr[lhsIndex]
        rhsSum += subArr[rhsIndex]
        rhsIndex += 1
        lhsIndex -= 1
    }
    return abs(rhsSum - lhsSum)
}

diagonalDifference(arr:
    [
        [1, 2, 3],
        [4, 5, 6],
        [9, 8, 9]
    ]
)
