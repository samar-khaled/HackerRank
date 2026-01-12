import UIKit

func areBracketsProperlyMatched(code_snippet: String) -> Bool {
    // Write your code here
    let arrOfString = Array(code_snippet)
    var stack = Stack<Character>()

    for item in arrOfString {
        if item == "{" || item == "[" || item == "(" {
            stack.push(e: item)
        } else if item == "}" && stack.peek() == "{" ||
            item == "]" && stack.peek() == "[" ||
            item == ")" && stack.peek() == "(" {
            stack.pop()
        } else if item == "}" || item == "]" || item == ")" {
            stack.push(e: item)
        } else {
            continue
        }
    }
    return stack.isEmpty() ? true : false
}

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

areBracketsProperlyMatched(code_snippet: "if (a[0] > b[1]) { doSomething(); }")
areBracketsProperlyMatched(code_snippet: "{[()]}")

areBracketsProperlyMatched(code_snippet: "")

areBracketsProperlyMatched(code_snippet: "() {} []")
