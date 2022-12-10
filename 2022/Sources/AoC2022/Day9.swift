//
//  File.swift
//  
//
//  Created by Mathijs Kadijk on 09/12/2022.
//

import Foundation

private struct Coord: Hashable {
    let x: Int
    let y: Int
    
    func move(_ delta: Coord) -> Coord {
        Coord(x: x + delta.x, y: y + delta.y)
    }

    func follow(other: Coord) -> Coord {
        guard abs(other.x - x) > 1 || abs(other.y - y) > 1 else { return self }
        return Coord(x: x + max(-1, min(1, other.x - x)), y: y + max(-1, min(1, other.y - y)))
    }
}

private let directions: [Substring: Coord] = [
    "L": Coord(x: -1, y: 0),
    "R": Coord(x: 1, y: 0),
    "D": Coord(x: 0, y: 1),
    "U": Coord(x: 0, y: -1)
]

func day9(ropeLength: Int) -> (String) -> Int {
    { filePath in
        var rope = Array(repeating: Coord(x: 0,y: 0), count: ropeLength)

        return LineReader(path: filePath)
            .flatMap { line in
                let parts = line.split(separator: " ")
                let direction = directions[parts.first!]!
                let amount = Int(parts.last!)!
                return Array(repeating: direction, count: amount)
            }
            .reduce(into: Set(rope), { visited, instruction in
                rope[0] = rope[0].move(instruction)
                for i in rope.indices.dropFirst() {
                    rope[i] = rope[i].follow(other: rope[i-1])
                }
                
                visited.insert(rope.last!)
            })
            .count
    }
}
