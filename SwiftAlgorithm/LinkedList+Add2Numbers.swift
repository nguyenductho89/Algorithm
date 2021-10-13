//
//  LinkedList+Add2Numbers.swift
//  SwiftAlgorithm
//
//  Created by Nguyễn Đức Thọ on 01/10/2021.
//

import Foundation
//https://leetcode.com/problems/add-two-numbers/
/*
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 */

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l11 = l1 else {
        return  l2
    }
    guard let l22 = l2 else {
        return l1
    }
    let val = l11.val + l22.val
    guard val < 10 else {
        let carry = addTwoNumbers(l11.next, ListNode.init(1))
        return ListNode.init(val - 10, addTwoNumbers(carry!, l22.next))
    }
    return ListNode.init(val, addTwoNumbers(l11.next, l22.next))
}

//func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var l1: ListNode? = l1
//        var l2: ListNode? = l2
//
//        var result: ListNode? = ListNode(0)
//        let head = result
//
//        var carry = 0
//        while l1 != nil || l2 != nil || carry > 0 {
//            let firstValue = l1?.val ?? 0
//            let secondValue = l2?.val ?? 0
//            let sum = firstValue + secondValue + carry
//
//            let value = sum % 10
//            carry = sum / 10
//
//            result?.next = ListNode(value)
//            result = result?.next
//            l1 = l1?.next
//            l2 = l2?.next
//        }
//
//        return head?.next
//    }
