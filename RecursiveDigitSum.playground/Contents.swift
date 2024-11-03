import UIKit

/// https://www.hackerrank.com/challenges/recursive-digit-sum/problem

func superDigit(n: String, k: Int) -> Int {
    // Write your code here
    print(n)
    let sum = getDigit(string: n)
    let total = sum * k
    if total > 9 {
        return getDigit(string: "\(total)")
    }
    return total
}

func getDigit(string: String) -> Int {
    print(string)
    let array = Array(string)
    let intArray = array.compactMap { Int(String($0)) }
    let sum = intArray.reduce(0, +)
    if sum > 9 {
        return getDigit(string: "\(sum)")
    }
    return sum
}

print(superDigit(n: "9875", k: 4))
