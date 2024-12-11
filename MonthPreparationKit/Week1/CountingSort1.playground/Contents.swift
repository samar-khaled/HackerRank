import UIKit

/// https://www.hackerrank.com/challenges/countingsort1/problem

func countingSort(arr: [Int]) -> [Int] {
    // Write your code here
    var result = [Int](repeating: 0, count: 100)

    for i in arr {
        result[i] += 1
    }

    return result
}

countingSort(arr: [1, 1, 3, 2, 1])
