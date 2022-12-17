//
//  Day13.swift
//  
//
//  Created by Mathijs Kadijk on 12/12/2022.
//

import Foundation

private typealias Packet = [Any]

private func parse(packet: Substring) -> Packet {
    packet.reduce(into: Packet()) { stack, character in
        if character == "[" {
            stack.append([])
        }
        else if let number = character.wholeNumberValue {
            if let last = stack.last, last as? Int != nil {
                stack.append(stack.popLast() as! Int * 10 + number)
            } else {
                stack.append(number)
            }
        }
        
        if let last = stack.last as? Int, character == "," || character == "]" {
            _ = stack.popLast()
            var list = stack.popLast() as! [Any]
            list.append(last)
            stack.append(list)
        }
        
        if character == "]" {
            let childList = stack.popLast() as! [Any]
            if var parentList = stack.popLast() as? [Any] {
                parentList.append(childList)
                stack.append(parentList)
            } else {
                stack.append(contentsOf: childList)
            }
        }
    }
}

private struct PacketPair {
    let index: Int
    let left: Packet
    let right: Packet

    init(zeroBasedIndex: Int, stringPair: Substring) {
        index = zeroBasedIndex+1
        
        let packets = stringPair.split(separator: "\n")
            .map(parse)
        left = packets.first!
        right = packets.last!
    }
    
    func isOrderedCorrectly() -> Bool {
        print("== Pair \(index) ==")
        guard let result = isInIncreasingOrder(left: left, right: right) else { fatalError() }
        print("")
        return result
    }
}

private func isInIncreasingOrder(left: Any?, right: Any?, indention: Int = 0) -> Bool? {
    guard let left else {
        print(String(repeating: " ", count: indention*2), "- Left side ran out of items, so inputs are in the right order")
        return true
    }
    guard let right else {
        print(String(repeating: " ", count: indention*2), "- Right side ran out of items, so inputs are NOT in the right order")
        return false
    }
    
    print(String(repeating: " ", count: indention*2), "- Compare", left, "vs", right)
    
    if let left = left as? Int, let right = right as? Int {
        if left < right {
            print(String(repeating: " ", count: indention*2+2), "- Left side is smaller, so inputs are in the right order")
            return true
        }
        if left > right {
            print(String(repeating: " ", count: indention*2+2), "- Right side is smaller, so inputs are NOT in the right order")
            return false
        }
        if left == right { return nil }
    }
    
    if let left = left as? [Any], let right = right as? [Any] {
        for i in 0..<max(left.count, right.count) {
            if let result = isInIncreasingOrder(left: left[safe: i], right: right[safe: i], indention: indention+1) {
                return result
            }
        }
        return nil
    }
    
    // Input is mixed
    if let left = left as? Int {
        print(String(repeating: " ", count: indention*2), "- Mixed types; convert left to", [left], "and retry comparison")
        return isInIncreasingOrder(left: [left], right: right, indention: indention)
    }
    if let right = right as? Int {
        print(String(repeating: " ", count: indention*2), "- Mixed types; convert right to", [right], "and retry comparison")
        return isInIncreasingOrder(left: left, right: [right], indention: indention)
    }

    return nil
}

func day13part1(filePath: String) -> Int {
    try! String(contentsOfFile: filePath)
        .split(separator: "\n\n")
        .enumerated()
        .map(PacketPair.init)
        .filter { $0.isOrderedCorrectly() }
        .map(\.index)
        .reduce(0, +)
}

func day13part2(filePath: String) -> Int {
    (try! String(contentsOfFile: filePath) + "\n[[2]]\n[[6]]")
        .split(separator: "\n")
        .filter { !$0.isEmpty }
        .map(parse)
        .sorted { lhs, rhs in
            guard let result = isInIncreasingOrder(left: lhs, right: rhs) else { fatalError() }
            return result
        }
        .enumerated()
        .filter { (_, packet) in isInIncreasingOrder(left: packet, right: [[2]]) == nil || isInIncreasingOrder(left: packet, right: [[6]]) == nil }
        .map { (i, _) in i+1 }
        .reduce(1, *)
}
