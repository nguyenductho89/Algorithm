//
//  SwiftAlgorithmTests.swift
//  SwiftAlgorithmTests
//
//  Created by Nguyễn Đức Thọ on 26/09/2021.
//

import XCTest
@testable import SwiftAlgorithm

class SwiftAlgorithmTests: XCTestCase {

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
    Input: l1 = [2,4,3], l2 = [5,6,4]
    Output: [7,0,8]
    Explanation: 342 + 465 = 807.
         */
        let l1 = ListNode.init(2, ListNode.init(4,ListNode.init(3)))
        let l2 = ListNode.init(5, ListNode.init(6,ListNode.init(4)))
        let r = ListNode.init(7, ListNode.init(0,ListNode.init(8)))
        XCTAssert(addTwoNumbers(l1, l2) == r)
    }
    
    func testAdd2() {
        /*
         Input: l1 = [0], l2 = [0]
         Output: [0]
         */
        let l1 = ListNode.init(0)
        let l2 = ListNode.init(0)
        let r = ListNode.init(0)
        print("\(addTwoNumbers(l1, l2)) vs \(r)")
        XCTAssert(addTwoNumbers(l1, l2) == r)
        print("\(addTwoNumbers(l1, l2)) vs \(r)")
    }
    
    func test3() {
        /*
         Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
         Output: [8,9,9,9,0,0,0,1]
         */
        let l1 = ListNode.init(9, ListNode.init(9,ListNode.init(9,ListNode.init(9,ListNode.init(9,ListNode.init(9, ListNode.init(9)))))))
        let l2 = ListNode.init(9,ListNode.init(9,ListNode.init(9, ListNode.init(9))))
        let r = ListNode.init(8, ListNode.init(9,ListNode.init(9,ListNode.init(9,ListNode.init(0,ListNode.init(0, ListNode.init(0,ListNode.init(1))))))))
        print("\(addTwoNumbers(l1, l2)) vs \(r)")
        XCTAssert(addTwoNumbers(l1, l2) == r)
        print("\(addTwoNumbers(l1, l2)) vs \(r)")
        var e: [Int] = [1,2]
    }
}
