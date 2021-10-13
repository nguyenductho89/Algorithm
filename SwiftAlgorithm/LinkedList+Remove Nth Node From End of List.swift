//
//  LinkedList+Remove Nth Node From End of List.swift
//  SwiftAlgorithm
//
//  Created by Nguyễn Đức Thọ on 01/10/2021.
//

import Foundation
import SwiftUI
//Given the head of a linked list, remove the nth node from the end of the list and return its head.

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        if head == nil || head?.next == nil { return nil }

        var newList = head
        var listLength: Int = 0

        DFS(&newList, &listLength, n)

        return newList

    }

    private func DFS(_ node: inout ListNode?, _ length: inout Int, _ n: Int) {

        if node!.next != nil {
            DFS(&node!.next, &length, n)
        }

        length += 1

        if length == n {
            node = node!.next
        }

    }



//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode?
//{
//    guard head != nil else
//    {
//        return nil
//    }
//
//    let ret = removeIfN(node: head!, n: n)
//    return ret == n ? head!.next : head
//}
//
//func removeIfN(node: ListNode, n: Int) -> Int
//{
//    if node.next != nil
//    {
//        let ret = removeIfN(node: node.next!, n: n)
//        if ret == n
//        {
//            node.next = node.next?.next
//        }
//        return ret + 1
//    }
//    else
//    {
//        return 1
//    }
//}


//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//    var dummy = ListNode(0, head)
//    helper1Pass(dummy, n)
//    return dummy.next
//}
//
//func helper1Pass(_ node: ListNode?, _ n: Int) -> Int {
//    if node == nil { return 0 }
//
//    let tailCount = helper1Pass(node?.next, n)
//    if tailCount == n {
//        node?.next = node?.next?.next
//    }
//    return tailCount+1
//}
