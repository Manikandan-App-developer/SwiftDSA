//
//  Merge two sorted linked lists.swift
//  SwiftDSA
//
//  Created by Manikandan on 05/05/24.
//

import Foundation


public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    // Base cases
    guard let l1 = list1 else { return list2 }
    guard let l2 = list2 else { return list1 }

    // Recursive step: Merge smaller node to the next node
    if l1.val < l2.val {
        l1.next = mergeTwoLists(l1.next, l2)
        return l1
    } else {
        l2.next = mergeTwoLists(l1, l2.next)
        return l2
    }
}

func mergeTwoListsMethod2(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var mergedList: ListNode? = nil
    var current: ListNode? = mergedList
        
    var p1 = list1
    var p2 = list2
    
    while p1 != nil && p2 != nil {
        if p1!.val < p2!.val {
            current?.next = p1
            p1 = p1?.next
        } else {
            current?.next = p2
            p2 = p2?.next
        }
        current = current?.next
    }
        
    current?.next = p1 ?? p2
        
    return mergedList?.next
}


func printAnswer() {
    
    let l1 = ListNode(1)
    let l2 = ListNode(3)
    let l3 = ListNode(5)
    
    l1.next = l2
    l2.next = l3
    l3.next = nil
    
    let m1 = ListNode(2)
    let m2 = ListNode(4)
    
    m1.next = m2
    m2.next = nil
    
    let answer = mergeTwoLists(l1, m1)
    
    
    printList(answer)
    
}

func printList(_ head: ListNode?) {
    var current: ListNode? = head
    while current != nil {
        print(current!.val, terminator: " ")
            current = current?.next
    }
    print()
}
