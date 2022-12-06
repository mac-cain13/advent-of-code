//
//  Day6.swift
//  
//
//  Created by Mathijs Kadijk on 06/12/2022.
//

import Foundation

public func day6(uniqueCharactersNeeded: Int) -> (String) -> Int {
    { filePath in
        let input = Array(try! String(contentsOfFile: filePath).trimmingCharacters(in: .whitespacesAndNewlines))
        
        var window = input.prefix(upTo: uniqueCharactersNeeded)
        var rest = input.dropFirst(uniqueCharactersNeeded)
        
        while window.count > Set(window).count {
            window = window.dropFirst()
            window.append(rest.first!)
            rest = rest.dropFirst(1)
        }
        
        return input.count - rest.count
    }
}
