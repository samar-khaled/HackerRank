import UIKit

func findFirstOccurrence(nums: [Int], target: Int) -> Int {
    nums.firstIndex(of: target) ?? -1
}

findFirstOccurrence(nums: [1, 2, 3, 4, 5], target: 3)
findFirstOccurrence(nums: [], target: 3)
findFirstOccurrence(nums: [1, 3, 3], target: 3)
