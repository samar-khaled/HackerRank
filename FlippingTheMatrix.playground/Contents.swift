/// https://www.hackerrank.com/challenges/flipping-the-matrix/problem
/// https://medium.com/@subhanusroy/flipping-the-matrix-hackerrank-optimised-solution-in-c-java-python-with-explanation-a3dad70149ee

import UIKit

func flip(matrix: [[Int]]) -> Int {
    let n = matrix.count / 2
    var max = 0
    var total = 0
    for row in 0 ... n - 1 {
        for col in 0 ... n - 1 {
            max = 0
            max = getMax(matrix[row][col], max)
            max = getMax(matrix[row][2 * n - col - 1], max)
            max = getMax(matrix[2 * n - row - 1][col], max)
            max = getMax(matrix[2 * n - row - 1][2 * n - col - 1], max)

            total += max
        }
    }
    return total
}

func getMax(_ i: Int, _ j: Int) -> Int {
    if i > j { return i }
    return j
}

let matrix = [[806, 408], [1674, 3625]]
//let matrix = [[112, 42, 83, 119],
//              [56, 125, 56, 49],
//              [15, 78, 101, 43],
//              [62, 98, 114, 108]]

flip(matrix: matrix)
