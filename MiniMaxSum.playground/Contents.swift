import UIKit

/// https://www.hackerrank.com/challenges/mini-max-sum

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here

    let sortedArr = arr.sorted()
    let sum = sortedArr.reduce(0, +)
    let min = sum - (sortedArr.last ?? 0)
    let max = sum - (sortedArr.first ?? 0)
    print("\(min) \(max)")
}

miniMaxSum(arr: [1,3, 5, 7, 9])
