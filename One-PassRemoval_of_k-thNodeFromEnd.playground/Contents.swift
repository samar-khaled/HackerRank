import UIKit

func removeKthNodeFromEnd(head: SinglyLinkedListNode?, k: Int) -> SinglyLinkedListNode? {
    // Write your code here
    var arr = [SinglyLinkedListNode]()
    if let head {
        arr.append(head)
    }
    var current = head
    while current?.next != nil {
        if let next = current?.next {
            arr.append(next)
            current = next
        }
    }
    if k >= arr.count {
        return nil
    }
    let removed = arr[arr.count - 1 - k]
    if arr.count - 1 - k == 0 {
        return head?.next
    }
    let previous = arr[arr.count - 2 - k]
    previous.next = removed.next
    return head
}

let head = SinglyLinkedListNode(nodeData: 5)
head.next = SinglyLinkedListNode(nodeData: 6)
head.next?.next = SinglyLinkedListNode(nodeData: 7)
head.next?.next?.next = SinglyLinkedListNode(nodeData: 8)

removeKthNodeFromEnd(head: head, k: 3)

let head2 = SinglyLinkedListNode(nodeData: 1)
head2.next = SinglyLinkedListNode(nodeData: 5)

removeKthNodeFromEnd(head: head2, k: 1)

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?

    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?

    public init() {}

    public func insertNode(nodeData: Int) {
        self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
    }

    private func insertNode(node: SinglyLinkedListNode) {
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }

        tail = node
    }
}

func printSinglyLinkedList(head: SinglyLinkedListNode?, sep: String) {
    var node = head

    while node != nil {
        print(node!.data, terminator: "")

        node = node!.next

        if node != nil {
            print(sep, terminator: "")
        }
    }
}


