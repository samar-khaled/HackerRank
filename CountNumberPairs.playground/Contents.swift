import UIKit

func countAffordablePairs(prices: [Int], budget: Int) -> Int {
    // Write your code here
    var noPairs = 0
    for i in 0 ..< prices.count {
        for j in i + 1 ..< prices.count {
            if prices[i] + prices[j] <= budget {
                noPairs += 1
            }
        }
    }
    return noPairs
}

countAffordablePairs(prices: [1, 2, 3, 4, 5], budget: 7)
countAffordablePairs(prices: [], budget: 100)
