import UIKit

/// https://www.hackerrank.com/challenges/birthday-cake-candles/problem

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    let max = candles.max() ?? 0
    return candles.filter { $0 == max }.count
}

birthdayCakeCandles(candles: [3, 2, 1 ,3])
