import UIKit

func isNonTrivialRotation(s1: String, s2: String) -> Bool {
    if s1 == s2 { return false }
    var s2Chars = Array(s2)
    let count = s1.count

    for i in 0 ..< count {
        let char = s2Chars[0]
        s2Chars.removeFirst()
        s2Chars.append(char)
        if s1 == String(s2Chars) {
            return true
        }
    }

    return false
}

isNonTrivialRotation(s1: "abcde", s2: "cdeab")
isNonTrivialRotation(s1: "a", s2: "b")
isNonTrivialRotation(s1: "a", s2: "a")
