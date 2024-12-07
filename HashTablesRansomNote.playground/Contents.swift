import UIKit

/// https://www.hackerrank.com/challenges/ctci-ransom-note/problem

func checkMagazine(magazine: [String], note: [String]) {

    if magazine.count < note.count {
        print("No")
        return
    }

    var words: [String: Int] = [:]

    for word in magazine {
        if let _ = words[word] {
            words[word]! += 1
        } else {
            words[word] = 1
        }
    }

    for word in note {
        if let count = words[word] {
            if count == 1 {
                words.removeValue(forKey: word)
            } else {
                words[word]! -= 1
            }
        } else {
            print("No")
            return
        }
    }

    print("Yes")
}

checkMagazine(magazine: ["two", "times", "three", "is", "not", "four"],
              note: ["two", "times", "two", "is", "four"])

checkMagazine(magazine: ["give", "me", "one", "grand", "today", "night"],
              note: ["give", "one", "grand", "today"])

