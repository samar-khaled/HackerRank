import UIKit

/// https://www.hackerrank.com/challenges/linkedin-practice-caesar-cipher/problem

extension String {

    var length: Int {
        return count
    }

    subscript(i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript(r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    let alpha = "abcdefghijklmnopqrstuvwxyz"
    let upperAlpha = "abcdefghijklmnopqrstuvwxyz".uppercased()
    var encrypted = ""
    for char in s {
        if let index = alpha.index(of: char)?.encodedOffset {
            let i = (index + k) % alpha.count
            encrypted += alpha[i]
        } else if let index = upperAlpha.index(of: char)?.encodedOffset {
            let i = (index + k) % alpha.count
            encrypted += upperAlpha[i]
        } else {
            encrypted += "\(char)"
        }
    }
    return encrypted
}

caesarCipher(s: "middle-Outz", k: 2)
