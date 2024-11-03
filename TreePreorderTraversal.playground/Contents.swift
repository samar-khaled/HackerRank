import Foundation

/// https://www.hackerrank.com/challenges/tree-preorder-traversal/problem
/// Not working yet!
final class Node {
    var root: Int
    var left: Node?
    var right: Node?

    init(root: Int, left: Node? = nil, right: Node? = nil) {
        self.root = root
        self.left = left
        self.right = right
    }

    func setRight(r: Node) {
        right = r
    }

    func setLeft(l: Node) {
        left = l
    }
}

func process(no: Int, numbers: [Int]) {
//    print(numbers)
    if no == 0 || numbers.isEmpty { return }
    var nodes = [Node]()
    for (index, i) in numbers.enumerated() {
        let node = Node(root: i)
        if nodes.count > 0 {
            var left = getLastEmptyLeft(nodes: nodes, root: i)
            if var left = getLastEmptyLeft(nodes: nodes, root: i) {
                left.setLeft(l: node)
            } else if var right = getLastEmptyRight(nodes: nodes, root: i) {
                right.setRight(r: node)
            } else {
                var prev = nodes[index - 1]
                if prev.root < i {
                    prev.setRight(r: node)
                } else {
                    prev.setLeft(l: node)
                }
            }
        }
        nodes.append(node)
    }

    print(printNode(node: nodes[0]))
}

func getLastEmptyLeft(nodes: [Node], root: Int) -> Node? {
    for index in stride(from: nodes.count - 2, to: 0, by: -1) {

        if nodes[index].left != nil {
            if nodes[index + 1].root < root {
                return nodes[index + 1]
            } else {
                return nil
            }
        }
    }
    return nil
}

func getLastEmptyRight(nodes: [Node], root: Int) -> Node? {
    for index in stride(from: nodes.count - 2, to: 0, by: -1) {
        // print("index of right \(index), for root \(root)")
        if nodes[index].right != nil {
            //  print("nodes[index].right \(nodes[index].right), node = \(nodes[index].root) for root \(root)")
            if nodes[index + 1].right == nil, nodes[index + 1].root > root {
                return nodes[index + 1]
            } else {
                return nil
            }
        }
    }
    return nil
}

func printNode(node: Node) -> String {
    var string = "\(node.root) "
    // print(string)

    if let right = node.right {
        string += printNode(node: right)
        //   print(string)
    }
    if let left = node.left {
        string += printNode(node: left)
        // print(string)
    }
    return string
}

func processCommands() {

    let numbers = Int(readLine()!)!
    let string = readLine()!.split(separator: " ")
    let arr = string.compactMap { Int($0) }
    process(no: numbers, numbers: arr)
}

// processCommands()
process(no: 6, numbers: [1, 2, 5, 3, 6, 4])
