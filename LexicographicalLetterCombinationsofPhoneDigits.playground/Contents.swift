import UIKit

func minTasksToCancelForNoConflict(digits: String) -> [String] {
    if digits.isEmpty { return [] }
    let mapping: [Character: [String]] = [
        "0": ["0"],
        "1": ["1"],
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]

    var result = [String]()
    let digitsArray = Array(digits)

    func backtrack(_ index: Int, _ currentCombination: String) {
        // Base case: if the current combination length matches digits length, we're done
        if index == digitsArray.count {
            result.append(currentCombination)
            return
        }

        // Get the letters corresponding to the current digit
        let digit = digitsArray[index]
        if let letters = mapping[digit] {
            for letter in letters {
                // Recursive call for the next digit
                backtrack(index + 1, currentCombination + letter)
            }
        }
    }

    // Start the process
    backtrack(0, "")

    return result
}

minTasksToCancelForNoConflict(digits: "23")
minTasksToCancelForNoConflict(digits: "203")
