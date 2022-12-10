//
//  Day10.swift
//  
//
//  Created by Mathijs Kadijk on 10/12/2022.
//

import Foundation

func day10(filePath: String) -> Int {
    let xValues = LineReader(path: filePath)
        .flatMap { [0, Int($0.split(separator: " ").last!)] }
        .compactMap { $0 }
        .reduce(into: [1]) { acc, xChange in
            acc += [acc.last! + xChange]
        }
    
    // Part 2
    let crtOutput = xValues
        .map { ($0-1)...($0+1) }
        .enumerated()
        .map { (pixelPosition, sprite) in
            sprite.contains(pixelPosition % 40) ? "#" : "."
        }
        .chunked(size: 40)
        .map { String($0) }
        .joined(separator: "\n")
    print(crtOutput)
    
    // Part 1
    return stride(from: 20, to: xValues.count, by: 40)
        .reduce(0) { partialResult, cycleNumber in
            // -1 because: cycle count starts at 1, array starts at 0
            partialResult + cycleNumber * xValues[cycleNumber-1]
        }
}
