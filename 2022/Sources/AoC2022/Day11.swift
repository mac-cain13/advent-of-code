//
//  Day11.swift
//  
//
//  Created by Mathijs Kadijk on 11/12/2022.
//

import Foundation

class Monkey {
    let id: Int
    var items: [Int]
    let operation: (Int) -> Int
    let test: Int
    let next: [Bool: Int]
    
    var inspections = 0
    
    init(lines: [String]) {
        id = Int(lines[0].dropFirst("Monkey ".count).dropLast())!
        items = lines[1].dropFirst("  Starting items: ".count).split(separator: ", ").compactMap { Int($0) }

        operation = createOperation(operator: lines[2].dropFirst("  Operation: new = old ".count).first!,
                                    number: Int(lines[2].split(separator: " ").last!))
        
        test = Int(lines[3].dropFirst("  Test: divisible by ".count))!
        next = [
            true: Int(lines[4].dropFirst("    If true: throw to monkey ".count))!,
            false: Int(lines[5].dropFirst("    If false: throw to monkey ".count))!,
        ]
    }
    
    func inspectAllItems(monkeys: [Monkey], worryLevelDivider: Int, modulo: Int) {
        let currentItems = items
        items = []

        for item in currentItems {
            inspections += 1
            
            let newWorryLevel = (operation(item) / worryLevelDivider)
            let nextMonkey = next[newWorryLevel % test == 0]!

            monkeys[nextMonkey].items.append(newWorryLevel % modulo)
        }
    }
}

func createOperation(operator operatorCharacter: Character, number: Int?) -> (Int) -> Int {
    { old in
        switch operatorCharacter {
        case "+":
            guard let number else { return old + old }
            return old + number
        case "*":
            guard let number else { return old * old }
            return old * number
        default:
            fatalError("Unknown operator \(operatorCharacter)")
        }
    }
}

func day11(rounds: Int, worryLevelDivider: Int) -> (String) -> Int {
    { filePath in
        let monkeys = LineReader(path: filePath)
            .chunked(size: 7)
            .map(Monkey.init)

        let modulo = monkeys
            .map(\.test)
            .reduce(1, *)

        for _ in 0..<rounds {
            for monkey in monkeys {
                monkey.inspectAllItems(monkeys: monkeys, worryLevelDivider: worryLevelDivider, modulo: modulo)
            }
        }
        
        return monkeys
            .map(\.inspections)
            .sorted()
            .reversed()[0...1]
            .reduce(1, *)
    }
}
