//
//  File.swift
//  
//
//  Created by Nguyễn Đức Thọ on 13/10/2021.
//

import Foundation

indirect enum LinkedListEnumNode<T> {
    case value(element: T, next: LinkedListEnumNode<T>)
    case end
}

extension LinkedListEnumNode: Sequence {
    func makeIterator() -> LinkedListEnumIterator<T> {
        
        return LinkedListEnumIterator(current: self)
    }
}

struct LinkedListEnumIterator<T>: IteratorProtocol {

    var current: LinkedListEnumNode<T>

    mutating func next() -> T? {
        switch current {
        case let .value(element, next):
            current = next
            return element
        case .end:
            return nil
        }
    }
}
