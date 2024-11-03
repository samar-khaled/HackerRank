import UIKit

// https://www.hackerrank.com/challenges/new-year-chaos/problem

func minimumBribes(q: [Int]) {
    var ans = 0
    var shouldShow = true
    for i in stride(from: q.count - 1, through: 0, by: -1) {

        if q[i] - (i + 1) > 2 {
            shouldShow = false
            break
        }

        for j in stride(from: max(0, q[i] - 2), to: i, by: 1) {
            if q[j] > q[i] {
                ans += 1
            }
        }
    }

    if shouldShow {
        print(ans)
    } else {
        print("Too chaotic")
    }
}

// minimumBribes(q: [4,1,2,3])
// minimumBribes(q: [2,1,5,3,4])
//minimumBribes(q: [2, 5, 1, 3, 4])
// minimumBribes(q: [1,2,5,3,4,7,8,6])
 minimumBribes(q: [1,2,5,3,7,8,6,4])
