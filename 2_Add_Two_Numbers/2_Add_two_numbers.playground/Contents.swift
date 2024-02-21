// Задача 2: Сложить два числа (Add Two Numbers)

// Описание и решение задачи находятся в файле 2_Add_two_numbers.md

// Определение односвязного списка
class ListNode {
    var value: Int
    var next: ListNode?
    
    // MARK: - Init
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

struct LinkedList: CustomStringConvertible {
    // MARK: - Properties
    private var head: ListNode?
    private var tail: ListNode?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: ListNode? {
        return head
    }
    
    var last: ListNode? {
        return tail
    }
    
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            if let nodeValue = node?.value {
                text += "\(nodeValue)"
            }
            
            node = node?.next
            
            if node != nil {
                text += ", "
            }
        }
        
        return text + "]"
    }
    
    // MARK: - Interface
    mutating func append(value: Int) {
        let newNode = ListNode(value)
        
        if tail != nil {
            tail?.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
}


class Solution {
    // Time  complexity: O(max⁡(m,n))
    // Space complexity: O(1)
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

//- Входные параметры: l1 = [2, 4, 3], l2 = [5, 6, 4]
//- Выходные параметры: [7, 0, 8]
//- Объяснение: 342 + 465 = 807

var firstList = LinkedList()
firstList.append(value: 2)
firstList.append(value: 4)
firstList.append(value: 3)
firstList.description

var secondList = LinkedList()
secondList.append(value: 5)
secondList.append(value: 6)
secondList.append(value: 4)
secondList.description

let solution = Solution()
let unionList = solution.addTwoNumbers(firstList.first, secondList.first)
