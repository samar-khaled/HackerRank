import UIKit

func isAlphabeticPalindrome(code: String) -> Bool {
    // Soltion 1
    let letterString = code.filter { $0.isLetter }.lowercased()
    let chars = Array(letterString)
    var i = 0
    var j = chars.count - 1
    while i < j {
        if chars[i] != chars[j] {
            return false
        }
        i += 1
        j -= 1
    }
    return true
    
    // Solution 2
//    let filteredString = code
//        .filter { $0.isLetter }
//        .lowercased()
//    
//    return filteredString == String(filteredString.reversed())
}

isAlphabeticPalindrome(code: "1234")
isAlphabeticPalindrome(code: "1234aAbV")
isAlphabeticPalindrome(code: "1_!2@ac")
isAlphabeticPalindrome(code: "A1b2B!a")
isAlphabeticPalindrome(code: "abccba")
