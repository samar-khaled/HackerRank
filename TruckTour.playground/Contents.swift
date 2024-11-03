import UIKit

/// https://www.hackerrank.com/challenges/truck-tour/problem

func truckTour(petrolpumps: [[Int]]) -> Int {

    let size = petrolpumps.count
    for start in 0 ... size {
        if petrolpumps[start][0] < petrolpumps[start][1] {
            continue
        }
        var tank = 0
        var position = start
        var pumpCount = 0
        while true {
            if pumpCount == size { return start }
            if tank < 0 { break }
            tank += petrolpumps[position % size][0] - petrolpumps[position % size][1]
            position += 1
            pumpCount += 1
        }
    }
    return -1
}

truckTour(petrolpumps: [[1, 5], [10, 3], [3, 4]])
