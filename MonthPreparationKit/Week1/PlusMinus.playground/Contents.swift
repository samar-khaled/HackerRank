import UIKit

/// https://www.hackerrank.com/challenges/plus-minus/problem
func plusMinus(arr: [Int]) {
    // Write your code here
    let count: Double = Double(arr.count == 0 ? 1 : arr.count)
    let positive = Double(arr.filter { $0 > 0 }.count)
    let negative = Double(arr.filter { $0 < 0 }.count)
    let zeros = Double(arr.filter { $0 == 0 }.count)
    print("\(Double(positive / count))")
    print("\(Double(negative / count))")
    print("\(Double(zeros / count))")
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
