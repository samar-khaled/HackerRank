import UIKit
/// https://coderforyou.medium.com/tower-breakers-hackerrank-solution-3dcc75e6a881
/// https://www.hackerrank.com/challenges/tower-breakers-1/problem

func towerBreakers(n: Int, m: Int) -> Int {
    // Write your code here
    if m == 1 || n % 2 == 0 {
        return 2
    } else {
        return 1
    }
}
