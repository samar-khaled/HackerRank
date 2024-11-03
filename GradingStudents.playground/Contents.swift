// https://www.hackerrank.com/challenges/grading/problem

import UIKit

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var newGrades = [Int]()
    for grade in grades {
        if grade < 38 {
            newGrades.append(grade)
        } else if grade % 5 == 0 {
            newGrades.append(grade)
        } else {
            let mod = 5 - (grade % 5)
            if mod < 3 {
                newGrades.append(grade + mod)
            } else {
                newGrades.append(grade)
            }
        }
    }
    return newGrades
}

gradingStudents(grades: [73, 67, 38, 33])
