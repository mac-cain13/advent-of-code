//
//  Day3.swift
//
//
//  Created by Mathijs Kadijk on 02/12/2022.
//

import Foundation

public func day3part1(filePath: String) -> Int {
    LineReader(path: filePath)
        .map { Set($0.prefix($0.count / 2)).intersection($0.suffix($0.count / 2)).first! }
        .map { (c: Character) in Int(c.isLowercase ? c.asciiValue! - 96 : c.asciiValue! - 38) }
        .reduce(0, +)
}

let all = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")

public func day3part2(filePath: String) -> Int {
    LineReader(path: filePath)
        .chunked(size: 3)
        .map { group in
            group
                .map(Set.init)
                .reduce(all) { $0.intersection($1) }
                .first!
        }
        .map { (c: Character) in Int(c.isLowercase ? c.asciiValue! - 96 : c.asciiValue! - 38) }
        .reduce(0, +)
}
