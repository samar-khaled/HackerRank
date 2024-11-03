import UIKit
import Foundation

/// https://www.hackerrank.com/challenges/simple-text-editor/problem
/// Need optimization some test cases are still failing due to timeout

struct TextEditor {
    private var text: String = ""
    private var history: [String] = []

    mutating func append(_ str: String) {
        history.append(text)
        text += str
    }

    mutating func delete(_ k: Int) {
        history.append(text)
        let endIndex = text.index(text.startIndex, offsetBy: max(0, text.count - k), limitedBy: text.endIndex) ?? text.endIndex
        text = String(text[..<endIndex])
    }

    mutating func printCharacter(at index: Int) -> Character? {
        guard index > 0 && index <= text.count else { return nil }
        let charIndex = text.index(text.startIndex, offsetBy: index - 1)
        return text[charIndex]
    }

    mutating func undo() {
        if let lastState = history.popLast() {
            text = lastState
        }
    }
}

func processCommands() {
    let editor = TextEditor()
    let numberOfCommands = Int(readLine()!)!
    
    var mutableEditor = editor

    for _ in 0..<numberOfCommands {
        let command = readLine()!.split(separator: " ")
        let action = command[0]
        
        switch action {
        case "1": // append
            let str = String(command[1])
            mutableEditor.append(str)
        case "2": // delete
            let k = Int(command[1])!
            mutableEditor.delete(k)
        case "3": // print
            let k = Int(command[1])!
            if let char = mutableEditor.printCharacter(at: k) {
                print(char)
            }
        case "4": // undo
            mutableEditor.undo()
        default:
            break
        }
    }
}

//processCommands()


