import Foundation

/// https://www.hackerrank.com/challenges/three-month-preparation-kit-lego-blocks/problem

let mod: Int = 7 + (pow(10, 9) as NSDecimalNumber).intValue

func power(base: Int, e: Int) -> Int {
    if e == 0 {
        return 1
    }
    if e == 1 {
        return base
    }

    var res = 1
    for i in 0 ..< e {
        res = (res * base) % mod
    }
    return res
}

func legoBlocks(n: Int, m: Int) -> Int {
    var a = Array<Int>(repeating: 0, count: 1001)
    a[0] = 1
    a[1] = 1
    a[2] = a[0] + a[1]
    a[3] = a[2] + a[1] + a[0]
    if m > 3 {
        for i in 4 ..< m + 1 {
            a[i] = (a[i - 1] + a[i - 2] + a[i - 3] + a[i - 4]) % mod
        }
    }
    print(a)

    var total = Array<Int>(repeating: 0, count: m + 1)

    for i in 0 ..< m + 1 {
        total[i] = power(base: a[i], e: n)
    }
    var solid = Array<Int>(repeating: 0, count: m + 1)
    solid[0] = 1
    solid[1] = 1
    for i in 2 ..< m + 1 {
        var sum: Int = 0
        for j in 1 ..< i {
            sum += solid[j] * total[i - j]
            sum %= mod
        }
        solid[i] = (total[i] - sum) % mod
    }
    while solid[m] < 0 {
        solid[m] += mod
    }
    return solid[m] % mod
}

// Example usage
let n = 4 // Height of the tower
let m = 3 // Max width of the blocks
print(legoBlocks(n: n, m: m)) // Output the number of ways to build the tower
