//
//  LinkedList+Remove Nth Node From End of List + Tests.swift
//  SwiftAlgorithmTests
//
//  Created by Nguyễn Đức Thọ on 01/10/2021.
//

import XCTest
@testable import SwiftAlgorithm

class LinkedList_Remove_Nth_Node_From_End_of_List___Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testAdd1() {
        /*
         Input: head = [1,2,3,4,5], n = 2
         Output: [1,2,3,5]
         */
        let l1 = ListNode.init(1, ListNode.init(2,ListNode.init(3, ListNode.init(4, ListNode.init(5)))))
        let n = 2
        let r = ListNode.init(1, ListNode.init(2,ListNode.init(3, ListNode.init(5))))
        XCTAssert(removeNthFromEnd(l1, n) == r)
    }
    
    func testAdd2() {
        /*
         Input: head = [1,2], n = 1
         Output: [1]
         */
        let l1 = ListNode.init(1, ListNode.init(2))
        let n = 1
        let r = ListNode.init(1)
        XCTAssert(removeNthFromEnd(l1, n) == r)
    }
    
    func test3() {
        /*
         Input: head = [1], n = 1
         Output: []
         */
        let l1 = ListNode.init(1)
        let n = 1
        XCTAssert(removeNthFromEnd(l1, n) == nil)
    }
}
