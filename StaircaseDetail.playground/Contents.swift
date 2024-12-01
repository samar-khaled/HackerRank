import UIKit

/// https://www.hackerrank.com/challenges/staircase/problem

func staircase(n: Int) {
    // Write your code here
    var arr = [Character]()
    for i in 1 ... n {
        arr.append(" ")
    }
    for i in 1 ... n {
        var index = n - i
        var newArr = arr
        for j in index ... (newArr.count - 1) {
            newArr[j] = "#"
        }
        print(String(newArr))
    }
}

staircase(n: 7)
