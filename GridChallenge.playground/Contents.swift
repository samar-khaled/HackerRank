import UIKit

/// https://www.hackerrank.com/challenges/one-week-preparation-kit-grid-challenge/problem
extension String {

    var length: Int {
        return count
    }

    subscript(i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript(r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func gridChallenge(grid: [String]) -> String {
    var grid = rowsSorted(grid: grid)
    if grid.count == 1 {
        return "YES"
    }
    let noColums = grid.count - 1

    for i in 0 ... noColums {
        var string = ""
        for j in 0 ... noColums {
            string += grid[j][i]
        }
        print(string)
        let sorted = string.sorted()
        if String(sorted) == string {
            continue
        } else {
            return "NO"
        }
    }
    return "YES"
}

func rowsSorted(grid: [String]) -> [String] {
    var newGrid = grid
    for (index, str) in grid.enumerated() {
        let sorted = str.sorted()
        newGrid[index] = String(sorted)
    }

    return newGrid
}

gridChallenge(grid: ["abc", "ade", "efg"])
gridChallenge(grid: ["kc", "iu"])
gridChallenge(grid: ["uxf", "vof", "hmp"])
gridChallenge(grid: ["hcd", "awc", "shm"])
gridChallenge(grid: ["sur", "eyy", "gxy"])
gridChallenge(grid: ["nyx", "ynx", "xyt"])
