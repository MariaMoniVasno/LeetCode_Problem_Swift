/*
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

Example : 1
Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]

*/


class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    // Solution 1
    var l1 = list1
    var l2 = list2
    var head : ListNode = ListNode(0)
    var temp = head
    while l1?.val != nil && l2?.val != nil{
        if l1!.val > l2!.val{
            temp.next = l2
            l2 = l2?.next
        }else{
            temp.next = l1
            l1 = l1?.next
        }
        temp = temp.next!
    }
        temp.next = l1 ?? l2
        return head.next    


    // Solution 2    
    var l1 = list1
    var l2 = list2
    if l1 == nil || l2 == nil {
        return l1 == nil ? l2 : l1
    }
    if l1!.val > l2!.val {
        l2?.next = mergeTwoLists(l1,l2?.next)
        return l2
    }else{
        l1?.next = mergeTwoLists(l1?.next,l2)
        return l1
    }
    
    }
}