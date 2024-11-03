import Foundation
// https://www.hackerrank.com/challenges/bfsshortreach/problem
import UIKit

func bfs(n: Int, m: Int, edges: [[Int]], s: Int) -> [Int] {
    print("n = \(n), m = \(m), edges = \(edges), s = \(s)")

    var graph = [Int: [Int]]()

    for edge in edges {
        if graph[edge[0]] == nil {
            graph[edge[0]] = [Int]()
        }
        graph[edge[0]]?.append(edge[1])

        if graph[edge[1]] == nil {
            graph[edge[1]] = [Int]()
        }
        graph[edge[1]]?.append(edge[0])
    }

    print(graph)
    // Distance array
    var distances = Array(repeating: -1, count: n + 1)
    distances[s] = 0

    // BFS queue
    var queue = [s]

    while !queue.isEmpty {
        print(queue)
        let current = queue.removeFirst()

        let dic = graph[current] ?? []
        dic.map { item in
            if distances[item] == -1 {
                distances[item] = distances[current] + 6
                queue.append(item)
            }
        }
    }

    print(distances)

    distances.remove(at: s)
    distances.removeFirst()

    print(distances)

    return distances
}

bfs(n: 4, m: 2, edges: [[1, 2], [1, 3]], s: 1)
bfs(n: 3, m: 1, edges: [[2, 3]], s: 2)
