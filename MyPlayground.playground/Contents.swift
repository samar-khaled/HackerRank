import UIKit

struct Requests {
    var id: Int
    var time: Int64
    init(id: Int, time: Int64) {
        self.id = id
        self.time = time
    }
}

func GetRejectedRequests(requests: [String], limit_per_second: Int) -> [Int] {
    var dic = [String: [Requests]]()
    var limitinMilliSeconds = limit_per_second * 1000
    // Write your code here
    for request in requests {
        let strings = request.split(separator: " ")
        if dic[String(strings[1])] == nil {
            dic[String(strings[1])] = [Requests]()
        }
        dic[String(strings[1])]?.append(Requests(id: Int(strings[0])!, time:  Int64(strings[2])!))
    }
    
    var count = [Int]()
    for (key, value) in dic {
        for (index, request) in value.enumerated() {
            if index == 0 { continue }
            print("now index = \(index), ids = \(count), request = \(request)")
            if let lastValid = getLastValidRequest(value: value, currentIndex: index - 1, ids: count) {
                let different = request.time -  lastValid.time
                print(different)
                if limitinMilliSeconds > different {
                    count.append(request.id)
                }
            }
        }
    }
    return count.sorted()
}

private func getLastValidRequest(value: [Requests], currentIndex: Int, ids: [Int]) -> Requests? {
    if ids.isEmpty {
        return value[currentIndex]
    }
    print(value)
    for index in stride(from: currentIndex, through: 0, by: -1) {
        print("CurrentIndex = \(currentIndex), ids \(ids), index = \(index)")
        if !ids.contains(value[index].id) {
            print(value[index])
            return value[index]
        }
    }
    return nil
}

// GetRejectedRequests(requests: ["1 172 50000", "2 172 50900", "3 172 51000", "4 172 51500"], limit_per_second: 2)

GetRejectedRequests(requests: ["1 138 50000",
                               "2 139 50100",
                               "3 138 50210",
                               "4 139 50300",
                               "5 138 51000",
                               "6 139 60300"], limit_per_second: 1)
