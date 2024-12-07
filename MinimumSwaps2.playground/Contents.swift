import UIKit

/// https://www.hackerrank.com/challenges/minimum-swaps-2/problem
/// https://github.com/raviseta/minimum-swaps-2/blob/main/minimum-swaps-2.playground/Contents.swift

func minimumSwaps(arr: [Int]) -> Int {
    var sortedArray = arr
    var swapCount = 0
    var i = 0
    while i < arr.count {
        let n = sortedArray[i] - 1
        print("n = \(n), sortedArray[i] = \(sortedArray[i]), sortedArray[n] = \(sortedArray[n])")
        if sortedArray[i] != sortedArray[n] {
            var temp = sortedArray[n]
            sortedArray[n] = sortedArray[i]
            sortedArray[i] = temp
            swapCount += 1
        } else {
            i += 1
        }
        print("i = \(i), swapCount = \(swapCount), sortedArray = \(sortedArray)")
    }
    return swapCount
}

minimumSwaps(arr: [7, 1, 3, 2, 4, 5, 6])
