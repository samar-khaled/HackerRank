import UIKit

func isAnagram(s: String, t: String) -> Int {
    s.sorted() == t.sorted() ? 1 : 0
}

isAnagram(s: "hello", t: "bellow")
isAnagram(s: "a", t: "a")
isAnagram(s: "ah", t: "ha")
