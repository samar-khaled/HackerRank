import UIKit

func binarySearch(nums: [Int], target: Int) -> Int {
    //    nums.firstIndex(of: target) ?? -1
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return -1
}

binarySearch(nums: [1,2,3,4,5], target: 3)
binarySearch(nums: [], target: 3)
binarySearch(nums: [1,10], target: 10)
