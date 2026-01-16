import UIKit

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?

    public init(nodeData: Int) {
        data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?

    public init() {}

    public func insertNode(nodeData: Int) {
        insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
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

func deleteDuplicates(head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    // Write your code here
    var previous = head
    var current = head?.next
    while current != nil {
        if previous?.data != current?.data {
            previous = current
            current = current?.next
        } else {
            previous?.next = current?.next
            current = current?.next
        }
    }
    return head
}

let head = SinglyLinkedListNode(nodeData: 1)
head.next = SinglyLinkedListNode(nodeData: 2)
head.next?.next = SinglyLinkedListNode(nodeData: 2)
head.next?.next?.next = SinglyLinkedListNode(nodeData: 3)

deleteDuplicates(head: head)
