import UIKit

/// https://www.hackerrank.com/challenges/counting-valleys/problem

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here

    var noValleys = 0
    var steps = Array(path)
    var seaLevel = 0
    var direction = 0
    for s in steps {
        if s == "U" {
            seaLevel += 1
            direction = 1
        } else {
            seaLevel -= 1
            direction = -1
        }
        if seaLevel == 0, direction == 1 {
            noValleys += 1
        }
    }
    return noValleys
}

countingValleys(steps: 8, path: "UDDDUDUU")
countingValleys(steps: 10, path: "UDUUUDUDDD")
