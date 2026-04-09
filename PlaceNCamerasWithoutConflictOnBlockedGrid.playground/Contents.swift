import UIKit


// https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/place-n-cameras-no-conflict-blocked-grid/problem?isFullScreen=true
func canPlaceSecurityCameras(N: Int, grid: [[Int]]) -> Bool {
    var cols = Set<Int>()
    var diag1 = Set<Int>() // row - col
    var diag2 = Set<Int>() // row + col
    
    func backtrack(_ row: Int) -> Bool {
        if row == N {
            return true
        }
        
        for col in 0..<N {
            // Skip blocked cells
            if grid[row][col] == 1 {
                continue
            }
            
            if cols.contains(col) || diag1.contains(row - col) || diag2.contains(row + col) {
                continue
            }
            
            // Place camera
            cols.insert(col)
            diag1.insert(row - col)
            diag2.insert(row + col)
            
            if backtrack(row + 1) {
                return true
            }
            
            // Backtrack
            cols.remove(col)
            diag1.remove(row - col)
            diag2.remove(row + col)
        }
        
        return false
    }
    
    return backtrack(0)
    
}

canPlaceSecurityCameras(N: 5, grid: [[1,0,0,1], [0,1,1,0], [1,0,1,0]]) // false
canPlaceSecurityCameras(N: 4, grid: [[0,0,0,0], [0,0,0,0], [0,0,0,0], [0,0,0,0]]) // true

//canPlaceSecurityCameras(N: 4, grid: [[0,0,0,0], [0,0,0,0]]) // false
