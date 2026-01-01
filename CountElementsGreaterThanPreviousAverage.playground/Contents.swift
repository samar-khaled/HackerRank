import UIKit

func countResponseTimeRegressions(responseTimes: [Int]) -> Int {
    // Write your code here
    if responseTimes.isEmpty {
        return 0
    }

    var count = 0
    var currentSum = 0.0

    // The loop starts from the second element (index 1) because the first element has no previous average to compare against.
    for i in 0 ..< responseTimes.count {
        let currentElement = Double(responseTimes[i])

        if i > 0 {
            // Calculate the average of elements from index 0 to i-1.
            let previousAverage = currentSum / Double(i)

            // Check if the current element is strictly greater than the previous average.
            if currentElement > previousAverage {
                count += 1
            }
        }

        // Update the running sum for the next iteration.
        currentSum += currentElement
    }

    return count
}

countResponseTimeRegressions(responseTimes: [100, 200, 150, 500])
countResponseTimeRegressions(responseTimes: [])
countResponseTimeRegressions(responseTimes: [100])
