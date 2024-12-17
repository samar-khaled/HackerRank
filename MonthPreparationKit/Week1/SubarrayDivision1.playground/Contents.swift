import UIKit

/// https://www.hackerrank.com/challenges/the-birthday-bar/problem
/// https://github.com/aleksandar-dinic/HackerRank-Solutions/blob/main/Problem%20Solving%20Algorithms/Solutions/02%20Implementation/06%20Subarray%20Division.swift

func birthday(s: [Int], d: Int, m: Int) -> Int {

    var ans = 0
    for (i, _) in s[0 ... s.count - m].enumerated() {
        var sum = 0
        for j in 0 ..< m {
            sum += s[i + j]
        }
        if sum == d {
            ans += 1
        }
    }
    return ans
}

birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
