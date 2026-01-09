import UIKit

func maximizeNonOverlappingMeetings(meetings: [[Int]]) -> Int {
    guard meetings.count > 0 else { return 0 }

    let sortedIntervals = meetings.sorted(by: { $0[1] < $1[1] })

    var count = 1
    var lastEndTime = sortedIntervals[0][1]

    for i in 1 ..< sortedIntervals.count {
        let currentInterval = sortedIntervals[i]

        if currentInterval[0] >= lastEndTime {
            count += 1
            lastEndTime = currentInterval[1]
        }
    }

    return count
}

maximizeNonOverlappingMeetings(meetings: [[0, 5], [0, 1], [1, 2], [2, 3], [3, 5], [4, 6]]
)
