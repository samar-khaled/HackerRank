import UIKit

/// https://www.hackerrank.com/challenges/no-prefix-set/problem
/// Need optimization some test cases are still failing due to timeout

func noPrefix(words: [String]) {
    // Write your code here
    var i = 0
    var length = words.count

    while i < length {
        var j = i - 1
        while j >= 0 {
            if words[i].hasPrefix(words[j]) {
                print("BAD SET")
                print(words[i])
                return
            } else if words[j].hasPrefix(words[i]) {
                print("BAD SET")
                print(words[i])
                return
            }
            j -= 1
        }
        i += 1
    }
    print("GOOD SET")
}

// noPrefix(words: ["abcd", "bcd", "abcde", "bcde"])
// noPrefix(words: ["ab", "bc", "cd"])
// noPrefix(words: ["aab", "defgab", "abcde", "aabcde", "cedaaa", "bbbbbbbb", "jabjjjad"])
// noPrefix(words: ["aab", "aac", "aacghgh", "aabghgh"])
//
// noPrefix(words: ["aab", "aac", "daacghgh", "d"])
noPrefix(words: ["ab", "bc", "ab"])
