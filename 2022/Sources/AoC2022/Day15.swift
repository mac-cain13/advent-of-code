//
//  File.swift
//  
//
//  Created by Mathijs Kadijk on 17/12/2022.
//

import Foundation

private let lineRegEx = #/Sensor at x=(?<sensorX>-?\d+), y=(?<sensorY>-?\d+): closest beacon is at x=(?<beaconX>-?\d+), y=(?<beaconY>-?\d+)/#
private struct Coord: Hashable {
    let x: Int
    let y: Int
}
private typealias Scanner = (position: Coord, closestBeacon: Coord)

private func xsCovered(by scanner: Scanner, at y: Int) -> [Int] {
    let distanceToBeacon = abs(scanner.position.x-scanner.closestBeacon.x)+abs(scanner.position.y-scanner.closestBeacon.y)
    let distanceToLine = abs(y-scanner.position.y)
    
    let wiggleRoom = distanceToBeacon-distanceToLine
    guard wiggleRoom >= 0 else { return [] }
    return (-wiggleRoom...wiggleRoom).map { x in x+scanner.position.x }
}

func day15part1(filePath: String) -> Int {
    let targetY = filePath.contains("sample") ? 10 : 2000000
    
    let scanners = LineReader(path: filePath)
        .map { line -> Scanner in
            let m = line.wholeMatch(of: lineRegEx)!
            return (Coord(x: Int(m.sensorX)!, y: Int(m.sensorY)!), Coord(x: Int(m.beaconX)!, y: Int(m.beaconY)!))
        }

    let coveredXs = scanners.flatMap { scanner in xsCovered(by: scanner, at: targetY) }
    let beaconXsAtTargetY = scanners.filter { (_, beacon) in beacon.y == targetY }.map(\.closestBeacon.x)
    
    return Set(coveredXs).subtracting(beaconXsAtTargetY).count
}

private func coordJustOutsideRange(of scanner: Scanner) -> [Coord] {
    let distanceToBeaconPlusOne = abs(scanner.position.x-scanner.closestBeacon.x)+abs(scanner.position.y-scanner.closestBeacon.y)+1
    
    return (-distanceToBeaconPlusOne...distanceToBeaconPlusOne).flatMap { delta in
        [
            Coord(x: scanner.position.x+delta, y: scanner.position.y+(distanceToBeaconPlusOne-abs(delta))),
            Coord(x: scanner.position.x+delta, y: scanner.position.y-(distanceToBeaconPlusOne-abs(delta))),
        ]
    }
}

private func removeCoordsCovered(by scanner: Scanner, from set: Set<Coord>) -> Set<Coord> {
    let distanceToBeacon = abs(scanner.position.x-scanner.closestBeacon.x)+abs(scanner.position.y-scanner.closestBeacon.y)
    return set.filter { coord in
        let distanceToCoord = abs(scanner.position.x-coord.x)+abs(scanner.position.y-coord.y)
        return distanceToCoord <= distanceToBeacon
    }
}

func day15part2(filePath: String) -> Int {
    return 0
    
    let scanners = LineReader(path: filePath)
        .map { line -> Scanner in
            let m = line.wholeMatch(of: lineRegEx)!
            return (Coord(x: Int(m.sensorX)!, y: Int(m.sensorY)!), Coord(x: Int(m.beaconX)!, y: Int(m.beaconY)!))
        }
    
    let coordsJustOutsideSensorRange = scanners.flatMap(coordJustOutsideRange)
    let uncoveredBeacons = scanners.reduce(Set(coordsJustOutsideSensorRange)) { theSet, scanner in
        removeCoordsCovered(by: scanner, from: theSet)
    }
    
    let beaconCoord = uncoveredBeacons.first!

    return beaconCoord.x * 4000000 + beaconCoord.y
}


