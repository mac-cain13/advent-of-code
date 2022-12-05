//
//  Day5.swift
//  
//
//  Created by Mathijs Kadijk on 05/12/2022.
//

import Foundation

public func day5(crane simulateCrane: @escaping (Array<Character>.SubSequence) -> [Character]) -> (String) -> String {
    { filePath in
        let input = try! String(contentsOfFile: filePath).split(separator: "\n\n")
        
        let stacks = input.first!
            .split(separator: "\n")
            .dropLast() // Drop stack numbers
            .map { row in
                stride(from: 1, through: row.count, by: 4)
                    .map { row[row.index(row.startIndex, offsetBy: $0)] }
            }
            .transposed()
            .map { $0.filter { $0 != " " } }

        let parseMove = #/move (?<amount>\d+) from (?<from>\d+) to (?<to>\d+)/#
        let topCrates = input.last!
            .split(separator: "\n")
            .map { move in
                let match = try! parseMove.wholeMatch(in: move)!
                return (amount: Int(match.amount)!, from: Int(match.from)!, to: Int(match.to)!)
            }
            .reduce(into: stacks, { stacks, move in
                stacks[move.to-1] = simulateCrane(stacks[move.from-1].prefix(move.amount)) + stacks[move.to-1]
                stacks[move.from-1] = Array(stacks[move.from-1].dropFirst(move.amount))
            })
            .map { $0.first ?? " " }
        
        return String(topCrates)
    }
}

public func crateMover9000(crates: Array<Character>.SubSequence) -> [Character] { crates.reversed() }
public func crateMover9001(crates: Array<Character>.SubSequence) -> [Character] { Array(crates) }

extension Collection where Self.Iterator.Element: RandomAccessCollection {
    func transposed() -> [[Self.Iterator.Element.Iterator.Element]] {
        self
            .max { $0.count < $1.count }?
            .indices
            .map { index in
                compactMap { index < $0.endIndex ? $0[index] : nil }
            } ?? []
    }
}
