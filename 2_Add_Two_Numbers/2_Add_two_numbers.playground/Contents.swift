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
        let dummyHead = ListNode(0)
        var curr = dummyHead
        var carry = 0, l1 = l1, l2 = l2
        
        while l1 != nil || l2 != nil || carry != 0 {
            let x = l1?.value ?? 0
            let y = l2?.value ?? 0
            let sum = carry + x + y
            carry = sum / 10
            curr.next = ListNode(sum % 10)
            curr = curr.next!
            l1 = l1?.next
            l2 = l2?.next
        }
        
        return dummyHead.next
    }
}

let forthNodeOfTheFirstList = ListNode(12, nil)
let thirdNodeOfTheFirstList = ListNode(9, forthNodeOfTheFirstList)
let secondNodeOfTheFirstList = ListNode(6, thirdNodeOfTheFirstList)
let firstNodeOfTheFirstList = ListNode(1, secondNodeOfTheFirstList)

let thirdNodeOfTheSecondList = ListNode(8, nil)
let secondNodeOfTheSecondList = ListNode(5, thirdNodeOfTheSecondList)
let firstNodeOfTheSecondList = ListNode(2, secondNodeOfTheSecondList)

let solution = Solution()
let unionList = solution.addTwoNumbers(firstNodeOfTheFirstList, firstNodeOfTheSecondList)

print(unionList!)

