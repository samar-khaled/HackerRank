import UIKit

func journeyToMoon(n: Int, astronaut: [[Int]]) -> Int {
    var adj = [Int: [Int]]()
    for pair in astronaut {
        adj[pair[0], default: []].append(pair[1])
        adj[pair[1], default: []].append(pair[0])
    }

    var visited = Array(repeating: false, count: n)
    var countrySizes = [Int]()

    for i in 0 ..< n {
        if !visited[i] {
            var size = 0
            var stack = [i]
            visited[i] = true

            while !stack.isEmpty {
                let node = stack.removeLast()
                size += 1

                if let neighbors = adj[node] {
                    for neighbor in neighbors {
                        if !visited[neighbor] {
                            visited[neighbor] = true
                            stack.append(neighbor)
                        }
                    }
                }
            }
            countrySizes.append(size)
        }
    }

    var totalPairs = 0
    var runningSum = 0
    for size in countrySizes {
        totalPairs += runningSum * size
        runningSum += size
    }

    return totalPairs
}

journeyToMoon(n: 4, astronaut: [[1, 2], [2, 3]]) // expected 3 pairs
