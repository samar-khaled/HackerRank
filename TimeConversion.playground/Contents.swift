import UIKit

/// https://www.hackerrank.com/challenges/time-conversion/problem

func timeConversion(s: String) -> String {
    // Write your code here
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    var dateFromStr = dateFormatter.date(from: s)!
    dateFormatter.dateFormat = "HH:mm:ss"

    // Usage
    var timeFromDate = dateFormatter.string(from: dateFromStr)
    return timeFromDate
}

timeConversion(s: "07:05:45PM")
