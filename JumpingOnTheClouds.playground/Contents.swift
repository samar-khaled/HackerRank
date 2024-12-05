import UIKit

/// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem

func jumpingOnClouds(c: [Int]) -> Int {
    var numberOfJumps = 0
    var i = 0

    while i < c.count - 1 {
        if i < c.count - 2 {
            if c[i + 2] == 0 {
                i += 2
            } else if c[i + 1] == 0 {
                i += 1
            }
        } else {
            if c[i + 1] == 0 {
                i += 1
            }
        }
        numberOfJumps += 1
    }
    return numberOfJumps
}

jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])
