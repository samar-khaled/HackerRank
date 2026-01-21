import UIKit

func findTaskPairForSlot(taskDurations: [Int], slotLength: Int) -> [Int] {
    var seen: [Int: Int] = [:]
    
    for (index, num) in taskDurations.enumerated() {
        let compare = slotLength - num
        if let seenIndex = seen[compare] {
            return [seenIndex, index]
        }
        seen[num] = index
    }
    
    return [-1, -1]
    
    /* var startIndex = 0
    var endIndex = 1
    while endIndex < taskDurations.count {
        let sum = taskDurations[startIndex] + taskDurations[endIndex]
        if sum == slotLength {
            return [startIndex, endIndex]
        } else {
            if endIndex == taskDurations.count - 1, startIndex < taskDurations.count - 1 {
                startIndex += 1
                endIndex = startIndex + 1
            } else {
                endIndex += 1
            }
        }
    }

    return [-1, -1]*/
}

findTaskPairForSlot(taskDurations: [2, 7, 11, 15], slotLength: 9)
findTaskPairForSlot(taskDurations: [1, 2, 3, 4], slotLength: 8)
findTaskPairForSlot(taskDurations: [1, 3, 2, 7], slotLength: 9)
findTaskPairForSlot(taskDurations: [7, 3, 2, 7, 2], slotLength: 9)
