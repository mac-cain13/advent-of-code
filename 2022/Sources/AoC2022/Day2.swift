//
//  Day2.swift
//  
//
//  Created by Mathijs Kadijk on 02/12/2022.
//

import Foundation

enum Move: Int {
    case Rock = 1
    case Paper = 2
    case Scissors = 3
    
    var score: Int { rawValue }
    
    init(fromChar: Character) {
        switch fromChar {
        case "A", "X": self = .Rock
        case "B", "Y": self = .Paper
        case "C", "Z": self = .Scissors
        default: fatalError("Unknown move character \(fromChar)")
        }
    }
    
    func outcome(against opponentMove: Move) -> Outcome {
        switch (self, opponentMove) {
        case (.Rock, .Rock), (.Paper, .Paper), (.Scissors, .Scissors):
            return .Draw
        case (.Rock, .Paper), (.Paper, .Scissors), (.Scissors, .Rock):
            return .Lose
        case (.Paper, .Rock), (.Scissors, .Paper), (.Rock, .Scissors):
            return .Win
        }
    }
    
    func myMove(to outcome: Outcome) -> Move {
        switch (self, outcome) {
        case (_, .Draw): return self
        case (.Rock, .Win): return .Paper
        case (.Paper, .Win): return .Scissors
        case (.Scissors, .Win): return .Rock
        case (.Rock, .Lose): return .Scissors
        case (.Paper, .Lose): return .Rock
        case (.Scissors, .Lose): return .Paper
        }
    }
}

enum Outcome: Int {
    case Win = 6
    case Draw = 3
    case Lose = 0
    
    var score: Int { rawValue }
    
    init(fromChar: Character) {
        switch fromChar {
        case "X": self = .Lose
        case "Y": self = .Draw
        case "Z": self = .Win
        default: fatalError("Unknown outcome character \(fromChar)")
        }
    }
}

public func day2part1(filePath: String) -> Int {
    LineReader(path: filePath)
        .map { line in
            let opponentMove = Move(fromChar: line.first!)
            let myMove = Move(fromChar: line.last!)
            return myMove.score + myMove.outcome(against: opponentMove).score
        }
        .reduce(0, +)
}

public func day2part2(filePath: String) -> Int {
    LineReader(path: filePath)
        .map { line in
            let opponentMove = Move(fromChar: line.first!)
            let neededResult = Outcome(fromChar: line.last!)
            return neededResult.score + opponentMove.myMove(to: neededResult).score
        }
        .reduce(0, +)
}
