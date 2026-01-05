import UIKit

func findSmallestMissingPositive(orderNumbers: [Int]) -> Int {
    let positiveNumbers = orderNumbers.filter { $0 > 0 }
    let numberSet = Set(positiveNumbers)
    var smallestMissing = 1
    while numberSet.contains(smallestMissing) {
        smallestMissing += 1
    }
    return smallestMissing
}

 findSmallestMissingPositive(orderNumbers: [])
 findSmallestMissingPositive(orderNumbers: [2])
findSmallestMissingPositive(orderNumbers: [-1, 4, 3, 1])
findSmallestMissingPositive(orderNumbers: [0, 1, 2])
findSmallestMissingPositive(orderNumbers: [7, 8, 9, 11, 12])
