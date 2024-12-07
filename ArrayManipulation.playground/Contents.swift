import UIKit

/// https://www.hackerrank.com/challenges/crush/problem
/// https://www.linkedin.com/pulse/array-manipulation-hackerrank-problem-analysis-solution-yovo-manolov-apo6f/
///  

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    /*
     var arr = [Int](repeating: 0, count: n)
     var max = 0
     for query in queries {
         let startIndex = query[0] - 1
         let endIndex = query[1] - 1
         let increamentValue = query[2]
         var index = startIndex
         while index <= endIndex {
             arr[index] += increamentValue

             if max < arr[index] {
                 max = arr[index]
             }
             index += 1
         }
     }
     return max*/

    // Optimal solution
    var tmp = [Int](repeating: 0, count: n + 1)

    for i in 0 ..< queries.count {
        tmp[queries[i][0] - 1] += queries[i][2]
        tmp[queries[i][1]] -= queries[i][2]
    }

    var ans = Int.min
    var sum = 0
    for t in tmp {
        sum += t
        ans = max(ans, sum)
    }

    return ans
}

arrayManipulation(n: 10, queries: [[1, 5, 3], [4, 8, 7], [6, 9, 1]])
