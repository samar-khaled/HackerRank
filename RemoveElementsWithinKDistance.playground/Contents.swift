import UIKit

func debounceTimestamps(timestamps: [Int], K: Int) -> Int {
    var sum = timestamps.count > 0 ? 1 : 0
    var startIndex = 0
    var nextIndex = 1

    while nextIndex < timestamps.count {
        if timestamps[nextIndex] - timestamps[startIndex] < K {
            nextIndex += 1
        } else {
            sum += 1
            startIndex = nextIndex
            nextIndex += 1
        }
    }
    return sum
}

debounceTimestamps(timestamps: [1, 2, 3, 8, 10], K: 3)

debounceTimestamps(timestamps: [], K: 3)
