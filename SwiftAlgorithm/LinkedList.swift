//
//  File.swift
//  SwiftAlgorithm
//
//  Created by Nguyễn Đức Thọ on 26/09/2021.
//

import Foundation

 // Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
    
 
}
 
//https://leetcode.com/problems/add-two-numbers/
/*
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 */

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let l11 = l1
    let l22 = l2
    let val = l11.val + l22.val
    guard val < 9 else {
        let remain = addTwoNumbers(l11.next, ListNode.init(1))
        return ListNode.init(0, addTwoNumbers(remain!.next, l22.next))
    }
    return ListNode.init(val, addTwoNumbers(l11.next, l22.next))
}

