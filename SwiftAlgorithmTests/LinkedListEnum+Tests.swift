//
//  LinkedListEnum+Tests.swift
//  SwiftAlgorithmTests
//
//  Created by Nguyễn Đức Thọ on 13/10/2021.
//

import XCTest
@testable import SwiftAlgorithm
class LinkedListEnum_Tests: XCTestCase {

    func testExample() throws {
        let node1 = LinkedListEnumNode.value(element: 1, next: LinkedListEnumNode.value(element: 2, next: LinkedListEnumNode.value(element: 3, next: LinkedListEnumNode.end)))
        let linkedList = node1
        var iterator = LinkedListEnumIterator<Int>(current: linkedList)
        print(iterator.next()) // => “A”
        print(iterator.next())
        print(iterator.next())
        print(iterator.next())
        print(iterator.next())
        print(iterator.next())
    }

}
