//
//  Day8.swift
//  
//
//  Created by Mathijs Kadijk on 07/12/2022.
//

import Foundation

typealias Coord = (x: Int, y: Int)
let allDirections: [Coord] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

func day8part1(filePath: String) -> Int {
    let matrix = LineReader(path: filePath)
        .map { Array($0).compactMap(\.wholeNumberValue) }

    return matrix
            .enumerated()
            .flatMap { (x, row) in
                row.indices.map { y in
                    allDirections.contains { direction in
                        scan(direction: direction, position: (x,y), maxHeight: matrix[x][y], in: matrix).edgeVisible
                    } ? 1 : 0
                }
            }
            .reduce(0, +)
}

func day8part2(filePath: String) -> Int {
    let matrix = LineReader(path: filePath)
        .map { Array($0).compactMap(\.wholeNumberValue) }

    return matrix
            .enumerated()
            .flatMap { (x, row) in
                row.indices.map { y in
                    allDirections.map { direction in
                        scan(direction: direction, position: (x,y), maxHeight: matrix[x][y], in: matrix)
                    }
                    .map(\.visibleTrees)
                    .reduce(1, *)
                }
            }
            .max()!
}

func scan(direction: Coord, position prevPosition: Coord, maxHeight: Int, in matrix: [[Int]], count: Int = 0) -> (visibleTrees: Int, edgeVisible: Bool) {
    let position: Coord = (prevPosition.x + direction.x, prevPosition.y + direction.y)

    guard position.x >= 0 && position.x < matrix.count else { return (count, true) }
    guard position.y >= 0 && position.y < matrix[position.x].count else { return (count, true) }
    guard matrix[position.x][position.y] < maxHeight else { return (count+1, false) }
    
    return scan(direction: direction, position: position, maxHeight: maxHeight, in: matrix, count: count+1)
}
