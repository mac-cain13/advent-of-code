//
//  Day12.swift
//  
//
//  Created by Mathijs Kadijk on 11/12/2022.
//

import Foundation

private struct Coord: Hashable {
    let x: Int
    let y: Int

    var neighbours: [Coord] {
        [
            Coord(x: x-1, y: y),
            Coord(x: x+1, y: y),
            Coord(x: x, y: y-1),
            Coord(x: x, y: y+1)
        ]
    }
}

private struct HeightMap {
    private let data: [[Character]]
    
    init(data: [[Character]]) {
        self.data = data
    }
    
    func coords(containing value: Character) -> [Coord] {
        data.enumerated()
            .flatMap { (y, row) in
                row.enumerated()
                    .compactMap { (x, v) in
                        guard v == value else { return nil }
                        return Coord(x: x, y: y)
                    }
            }
    }
    
    func value(at coord: Coord) -> Character? {
        guard coord.y >= 0 && coord.y < data.count else { return nil }
        let row = data[coord.y]
        guard coord.x >= 0 && coord.x < row.count else { return nil }
        return row[coord.x]
    }
    
    func height(at coord: Coord) -> UInt8? {
        guard let value = value(at: coord) else { return nil }
        if value == "S" { return Character("a").asciiValue! }
        if value == "E" { return Character("z").asciiValue! }
        return value.asciiValue!
    }
    
    func canMove(from: Coord, to: Coord) -> Bool {
        guard let fromHeight = height(at: from), let toHeight = height(at: to) else { return false }
        return fromHeight+1 >= toHeight
    }

    func steps(from: [Coord], to: Coord) -> Int? {
        var paths = from.map { [$0] }
        var visited = Set(from)
        
        while let path = paths.popLast() {
            if path.last == to { return path.count-1 }
            
            for neighbour in path.last!.neighbours {
                guard !visited.contains(neighbour) else { continue }
                guard canMove(from: path.last!, to: neighbour) else { continue }
                
                visited.insert(neighbour)
                paths = [path + [neighbour]] + paths
            }
        }
        
        return nil
    }
}

func day12(startCharacters: [Character]) -> (String) -> Int {
    { filePath in
        let heightMap = HeightMap(data: LineReader(path: filePath).map { Array($0) })
        
        let start = startCharacters.flatMap(heightMap.coords)
        let destination = heightMap.coords(containing: "E").first!
        
        return heightMap.steps(from: start, to: destination)!
    }
}
