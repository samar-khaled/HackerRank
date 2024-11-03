/// https://gist.github.com/kodekarim/37ef787ab4d925092078b50a305de883
import UIKit

private struct Stack<Element> {
    var storage: [Element] = []

    init() {}

    mutating func push(e: Element) {
        storage.append(e)
    }

    mutating func pop() -> Element? {
        return storage.popLast()
    }

    func peek() -> Element? {
        return storage.last
    }

    func isEmpty() -> Bool {
        return storage.isEmpty
    }
}

func isBalanced(s: String) -> String {
    // Write your code here
    let arrOfString = Array(s)
    var stack = Stack<Character>()

    for item in arrOfString {
        if item == "{" || item == "[" || item == "(" {
            stack.push(e: item)
        } else if item == "}" && stack.peek() == "{" ||
            item == "]" && stack.peek() == "[" ||
            item == ")" && stack.peek() == "(" {
            stack.pop()
        } else {
            stack.push(e: item)
        }
    }
    return stack.isEmpty() ? "YES" : "NO"
}

isBalanced(s: "{[()]}")
isBalanced(s: "{[(])}")
isBalanced(s: "{(([])[])[]}")
