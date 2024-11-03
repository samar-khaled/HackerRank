import Foundation

/// https://www.hackerrank.com/challenges/tree-preorder-traversal/problem

final class BinarySearchTree<T: Comparable> {
    private var value: T
    private var parent: BinarySearchTree?
    private var left: BinarySearchTree?
    private var right: BinarySearchTree?

    init(value: T) {
        self.value = value
    }

    convenience init(array: [T]) {
        precondition(array.count > 0)
        self.init(value: array.first!)
        for v in array.dropFirst() {
            insert(value: v)
        }
    }

    var isRoot: Bool {
        return parent == nil
    }

    var isLeaf: Bool {
        return left == nil && right == nil
    }

    var isLeftChild: Bool {
        return parent?.left === self
    }

    var isRightChild: Bool {
        return parent?.right === self
    }

    var hasLeftChild: Bool {
        return left != nil
    }

    var hasRightChild: Bool {
        return right != nil
    }

    var hasAnyChild: Bool {
        return hasLeftChild || hasRightChild
    }

    var hasBothChildren: Bool {
        return hasLeftChild && hasRightChild
    }

    var count: Int {
        return (left?.count ?? 0) + 1 + (right?.count ?? 0)
    }

    func insert(value: T) {
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = BinarySearchTree(value: value)
                left?.parent = self
            }
        } else {
            if let right = right {
                right.insert(value: value)
            } else {
                right = BinarySearchTree(value: value)
                right?.parent = self
            }
        }
    }
}

extension BinarySearchTree: CustomStringConvertible {
    public var description: String {
        var s = ""
        s += "\(value)"
        if let left = left {
            s += " \(left.description)"
        }
        if let right = right {
            s += " \(right.description)"
        }
        return s
    }
}

func process(no: Int, numbers: [Int]) {
    if no == 0 || numbers.isEmpty { return }
    let tree = BinarySearchTree<Int>(array: numbers)
    print(tree)
}

func processCommands() {
    let numbers = Int(readLine()!)!
    let string = readLine()!.split(separator: " ")
    let arr = string.compactMap { Int($0) }
    process(no: numbers, numbers: arr)
}

// processCommands()
process(no: 6, numbers: [1, 2, 5, 3, 6, 4])
