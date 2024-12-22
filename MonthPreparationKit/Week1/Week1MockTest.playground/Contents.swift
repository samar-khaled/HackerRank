import UIKit

/// Find the Median
/// https://www.hackerrank.com/challenges/find-the-median/problem
func findMedian(arr: [Int]) -> Int {
    // Write your code here

    let sorted = arr.sorted()
    return sorted[sorted.count / 2]
}

findMedian(arr: [5, 3, 1, 2, 4])

/// Flipping the matrix
/// https://www.hackerrank.com/challenges/flipping-the-matrix/problem
func flippingMatrix(matrix: [[Int]]) -> Int {
    // Write your code here
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
flippingMatrix(matrix: matrix)
