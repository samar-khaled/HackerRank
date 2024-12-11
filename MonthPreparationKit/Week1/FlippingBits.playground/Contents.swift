import UIKit

/// https://www.hackerrank.com/challenges/flipping-bits/problem

func flippingBits(n: Int) -> Int {
    // Write your code here
    let bitInput = String(UInt32(exactly: n)!, radix: 2)
    let bit = String(repeatElement("0", count: 32 - bitInput.count)) + bitInput
    var result = Array<String>()
    let characters = Array(bit)
    for char in characters {
        switch char {
        case "0":
            result.append("1")
        case "1":
            result.append("0")
        default:
            result.append(String(char))
        }
    }

    if let number = Int(result.joined(), radix: 2) {
        return number
    }
    return 0
}

flippingBits(n: 1)
