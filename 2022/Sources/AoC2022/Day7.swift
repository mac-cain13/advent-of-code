//
//  Day7.swift
//  
//
//  Created by Mathijs Kadijk on 07/12/2022.
//

import Foundation

class Directory {
    var files: [Int] = []
    var subDirectories: [Substring: Directory]
    
    var size: Int { files.reduce(0, +) + subDirectories.values.map(\.size).reduce(0, +) }

    var flattened: [Directory] { [self] + subDirectories.values.flatMap(\.flattened) }
    
    init(subDirectories: [Substring: Directory] = [:]) {
        self.subDirectories = subDirectories
    }
}

func fileSystem(from consoleOutputFilePath: String) -> Directory {
    LineReader(path: consoleOutputFilePath)
        .reduce(into: ArraySlice([Directory(subDirectories: ["/": Directory()])])) { pwdStack, line in
            if line == "$ cd .." {
                pwdStack = pwdStack.dropLast()
            }
            else if let dirname = line.wholeMatch(of: #/\$ cd (?<dirname>.+)/#)?.dirname {
                pwdStack.append(pwdStack.last!.subDirectories[dirname]!)
            }
            else if let directoryInfo = line.wholeMatch(of: #/dir (?<name>.+)/#) {
                pwdStack.last!.subDirectories[directoryInfo.name] = Directory()
            }
            else if let fileInfo = line.wholeMatch(of: #/(?<size>\d+) (?<name>.+)/#) {
                pwdStack.last!.files.append(Int(fileInfo.size)!)
            }
        }
        .first!
}

func day7part1(filePath: String) -> Int {
    fileSystem(from: filePath)
        .flattened
        .map(\.size)
        .filter { $0 < 100000 }
        .reduce(0, +)
}

func day7part2(filePath: String) -> Int {
    let fileSystem = fileSystem(from: filePath)
    let spaceNeeded = 30000000 - (70000000 - fileSystem.size)

    return fileSystem
        .flattened
        .map(\.size)
        .filter { $0 >= spaceNeeded }
        .min()!
}
