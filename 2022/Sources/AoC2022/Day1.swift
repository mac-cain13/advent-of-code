//
//  Day1.swift
//  
//
//  Created by Mathijs Kadijk on 01/12/2022.
//

import Foundation

public func day1part1(filePath: String) -> Int {
    var highest = 0
    var current = 0

    for line in LineReader(path: filePath)! {
        if (line.isEmpty) {
            highest = max(highest, current)
            current = 0
        } else {
            current += Int(line)!
        }
    }

    highest = max(highest, current)
    
    return highest
}

public func day1part2(filePath: String) -> Int {
    var sums: [Int] = []
    var current = 0

    for line in LineReader(path: filePath)! {
        if (line.isEmpty) {
            sums.append(current)
            current = 0
        } else {
            current += Int(line)!
        }
    }
    
    sums.append(current)

    return sums.sorted().reversed()[0..<3].reduce(0, +)
}

public func day1(highestN: Int) -> (String) -> Int {
    { filePath in
        var highest = ArraySlice(repeating: 0, count: highestN)
        var current = 0
        
        for line in LineReader(path: filePath)! {
            if line.isEmpty {
                if highest.first! < current {
                    highest = (highest + [current]).sorted().dropFirst()
                }
                current = 0
            } else {
                current += Int(line)!
            }
        }
        
        if highest.first! < current {
            highest = (highest + [current]).sorted().dropFirst()
        }

        return highest.reduce(0, +)
    }
}
