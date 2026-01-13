import UIKit

func processCouponStackOperations(operations: [String]) -> [Int] {
    var output = [Int]()
    var stack = Stack()

    for i in operations {
        if i == "getMin", let min = stack.getMin() {
            output.append(min)
        } else if i == "pop" {
            stack.pop()
        } else if i == "top", let top = stack.top() {
            output.append(top)
        } else if i.hasPrefix("push ") {
            let num = i.split(separator: "push ")[0]
            stack.push(Int(num)!)
        }
    }
    return output
}

private struct Stack {
    var storage: [Int] = []

    init() {}

    mutating func push(_ value: Int) {
        storage.append(value)
    }

    mutating func pop() -> Int? {
        return storage.popLast()
    }

    func top() -> Int? {
        return storage.last
    }

    func getMin() -> Int? {
        return storage.min()
    }
}

processCouponStackOperations(operations: ["push 2", "push 0", "push 3", "push 0", "getMin", "pop", "getMin", "pop", "top", "getMin"])

processCouponStackOperations(operations: ["push 2", "getMin"])
