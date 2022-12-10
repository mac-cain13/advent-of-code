//
//  ChunkedSequence.swift
//  
//
//  Created by Mathijs Kadijk on 03/12/2022.
//

import Foundation

struct ChunkedSequence<InnerSequence: IteratorProtocol>: Sequence, IteratorProtocol {
    private var innerSequence: InnerSequence
    private let chunkSize: Int
    
    init(innerSequence: InnerSequence, chunkSize: Int) {
        self.innerSequence = innerSequence
        self.chunkSize = chunkSize
    }
    
    mutating func next() -> [InnerSequence.Element]? {
        var result: [InnerSequence.Element] = []

        while result.count < chunkSize {
            guard let element = innerSequence.next() else { break }
            result.append(element)
        }

        return result.count > 0 ? result : nil
    }
}

extension Sequence {
    func chunked(size: Int) -> ChunkedSequence<Self.Iterator> {
        ChunkedSequence(innerSequence: makeIterator(), chunkSize: size)
    }
}
