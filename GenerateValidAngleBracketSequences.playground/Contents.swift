import UIKit

func generateAngleBracketSequences(n: Int) -> [String] {
    var result: [String] = []
    // Helper function: (currentString, openCount, closeCount)
    func backtrack(_ current: String, _ open: Int, _ close: Int) {
        // Base Case: Found a complete valid sequence
        if current.count == 2 * n {
            result.append(current)
            return
        }

        // Add opening parenthesis if we haven't used all 'n' opens
        if open < n {
            backtrack(current + "<", open + 1, close)
        }

        // Add closing parenthesis if it balances the current opens
        if close < open {
            backtrack(current + ">", open, close + 1)
        }
    }

    backtrack("", 0, 0) // Start with empty string, zero opens, zero closes
    return result
}

generateAngleBracketSequences(n: 3)
