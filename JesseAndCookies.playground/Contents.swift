import UIKit

// https://www.hackerrank.com/challenges/jesse-and-cookies/problem
/// Need optimization some test cases are still failing due to timeout

func cookies(k: Int, A: [Int]) -> Int {
    var cookies = A
    cookies.sort()

    var operations = 0

    while cookies.count > 1 && cookies[0] < k {
        let leastSweet = cookies.removeFirst()
        let secondLeastSweet = cookies.removeFirst()

        let newCookie = leastSweet + (2 * secondLeastSweet)
        operations += 1
        cookies.append(newCookie)
        cookies.sort()
    }

    return cookies[0] >= k ? operations : -1
}

cookies(k: 7, A: [1, 2, 3, 9, 10, 12])
// cookies(k: 90, A: [13,47,74, 12,89, 74, 18,38])
// cookies(k: 10, A: [1,1,1])

// cookies(k: 9, A: [1,62,14])

let k = 25
let A = [3581, 6214, 8543, 9266, 1150, 7498, 7209, 9398, 1529, 1032, 7384, 6784, 34, 1449, 7598, 8795, 756, 7803, 4112, 298, 4967, 1261, 1724, 4272, 1100, 9373]
let result = cookies(k: k, A: A)
print(result) // Output should be correct based on the logic
