//
//  LineReader.swift
//  
//
//  Created by Mathijs Kadijk on 01/12/2022.
//

import Foundation

class LineReader: Sequence, IteratorProtocol {
    private let file: UnsafeMutablePointer<FILE>!
    
    init(path: String) {
        file = fopen(path, "r")
        guard file != nil else { fatalError("Couldn't open file at \(path)") }
    }
    
    func next() -> String? {
        var line: UnsafeMutablePointer<CChar>? = nil
        var linecap: Int = 0
        defer { if (line != nil) { free(line!) } }
        return getline(&line, &linecap, self.file) > 0 ? String(cString: line!).trimmingCharacters(in: .newlines) : nil
    }

    deinit {
        fclose(file)
    }
}
