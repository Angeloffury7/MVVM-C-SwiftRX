//
//  InfiniteSequence.swift
//  Platform
//
//  Created by PowerMobile Team on 6/13/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

/// Sequence that repeats `repeatedValue` infinite number of times.
struct InfiniteSequence<E> : Sequence {
    typealias Element = E
    typealias Iterator = AnyIterator<E>
    
    private let _repeatedValue: E
    
    init(repeatedValue: E) {
        _repeatedValue = repeatedValue
    }
    
    func makeIterator() -> Iterator {
        let repeatedValue = _repeatedValue
        return AnyIterator {
            return repeatedValue
        }
    }
}
