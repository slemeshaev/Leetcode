// Задача 2: Сложить два числа (Add Two Numbers)

/* Вам даны два не пустых связанных списка, представляющих два неотрицательных целых числа. Цифры хранятся в обратном порядке, и каждый из их узлов содержит одну цифру. Добавьте два числа и верните сумму в виде связанного списка.
 
Вы можете предположить, что два числа не содержат ни одного ведущего нуля, за исключением самого числа 0. */

// Input: l1 = [2,4,3], l2 = [5,6,4]
// Output: [7,0,8]
// Explanation: 342 + 465 = 807.

// Definition for singly-linked list.
class ListNode {
    var value: Int
    var next: ListNode?
    
    // MARK: - Init
    init() {
        self.value = 0;
        self.next = nil;
    }
    
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
    
    init(_ value: Int, _ next: ListNode?) {
        self.value = value
        self.next = next
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return ListNode()
    }
}

let list1 = ListNode()
let list2 = ListNode()

let example = Solution()
example.addTwoNumbers(list1, list2)

