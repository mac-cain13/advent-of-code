//
//  Day4.swift
//  
//
//  Created by Mathijs Kadijk on 04/12/2022.
//

import Foundation

public func day4part1(filePath: String) -> Int {
    LineReader(path: filePath)
        .filter {
            let ranges = $0.split(separator: ",")
                            .map { $0.split(separator: "-") }
            let firstRange = Int(ranges.first!.first!)!...Int(ranges.first!.last!)!
            let secondRange = Int(ranges.last!.first!)!...Int(ranges.last!.last!)!
            
            return firstRange.clamped(to: secondRange) == firstRange || secondRange.clamped(to: firstRange) == secondRange
        }
        .count
}

public func day4part2(filePath: String) -> Int {
    LineReader(path: filePath)
        .filter {
            let ranges = $0.split(separator: ",")
                            .map { $0.split(separator: "-") }
            let firstRange = Int(ranges.first!.first!)!...Int(ranges.first!.last!)!
            let secondRange = Int(ranges.last!.first!)!...Int(ranges.last!.last!)!
            
            return firstRange.overlaps(secondRange)
        }
        .count
}
