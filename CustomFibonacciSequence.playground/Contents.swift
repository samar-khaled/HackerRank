import UIKit

// https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/custom-fibonacci-sequence/problem

func getAutoSaveInterval(n: Int) -> Int {
    var previous = 1
    var lastPrevious = 1
    if n == 0 { return previous }
    if n == 1 { return previous + lastPrevious }
    for i in 1 ..< n {
        let temp = previous
        previous = lastPrevious + previous
        lastPrevious = temp
    }

    return previous + lastPrevious
}

getAutoSaveInterval(n: 0)
getAutoSaveInterval(n: 1)
getAutoSaveInterval(n: 2)
getAutoSaveInterval(n: 3)
getAutoSaveInterval(n: 4)
getAutoSaveInterval(n: 5)
getAutoSaveInterval(n: 10)
