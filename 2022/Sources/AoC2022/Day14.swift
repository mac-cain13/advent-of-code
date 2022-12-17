//
//  File.swift
//  
//
//  Created by Mathijs Kadijk on 17/12/2022.
//

import Foundation

private struct Coord: Hashable {
    let x: Int
    let y: Int
    
    private var moves: [Coord] {
        [
            Coord(x: x, y: y+1),
            Coord(x: x-1, y: y+1),
            Coord(x: x+1, y: y+1),
        ]
    }
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    init(stringCoord: Substring) {
        let coords = stringCoord.split(separator: ",").compactMap { Int($0) }
        x = coords.first!
        y = coords.last!
    }
    
    func restingCoord(in grid: Set<Coord>, floorY: Int) -> Coord? {
        guard let validMove = moves.first(where: { !grid.contains($0) && $0.y < floorY }) else { return self }
        return validMove.restingCoord(in: grid, floorY: floorY)
    }
}

private struct Path {
    let points: [Coord]
    
    var coords: [Coord] {
        (1..<points.count).flatMap { i in
            if points[i-1].x != points[i].x {
                return (min(points[i-1].x, points[i].x)...max(points[i-1].x, points[i].x)).map { Coord(x: $0, y: points[i].y) }
            } else {
                return (min(points[i-1].y, points[i].y)...max(points[i-1].y, points[i].y)).map { Coord(x: points[i].x, y: $0) }
            }
        }
    }
    
    init(stringPath: String) {
        points = stringPath.split(separator: " -> ").map(Coord.init)
    }
}

private let sandEntrance = Coord(x: 500, y: 0)

func day14(filePath: String) -> (part1: Int, part2: Int) {
    let pathCoords = LineReader(path: filePath)
        .map(Path.init)
        .flatMap(\.coords)

    var grid = Set(pathCoords)
    let floorY = grid.map(\.y).max()! + 2
    
    var part1: Int?
    var sandCount = 0
    while let sandAtRest = sandEntrance.restingCoord(in: grid, floorY: floorY), sandAtRest != sandEntrance {
        if part1 == nil && sandAtRest.y+1 == floorY {
            part1 = sandCount
        }
        sandCount += 1
        grid.insert(sandAtRest)
    }
    
    return (part1: part1!, part2: sandCount+1)
}

func day14part1(filePath: String) -> Int { day14(filePath: filePath).part1 }
func day14part2(filePath: String) -> Int { day14(filePath: filePath).part2 }
