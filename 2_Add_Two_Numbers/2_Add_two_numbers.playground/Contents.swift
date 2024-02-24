// Задача 2: Сложить два числа (Add Two Numbers)

// Описание и решение задачи находятся в файле 2_Add_two_numbers.md

// Определение узла списка
class ListNode {
    var value: Int
    var next: ListNode?
    
    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

// Определение односвязного списка
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
        
        if let tail = tail {
            tail.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    mutating func removeFirst() {
        head = head?.next
        if isEmpty {
            tail = nil
        }
    }
    
    mutating func removeAll() {
        head = nil
        tail = nil
    }
}


class Solution {
    // Time  complexity: O(max⁡(m,n))
    // Space complexity: O(1)
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummyHead = ListNode(0)
        var currentNode = dummyHead
        var carry = 0, p = l1, q = l2
        
        while p != nil || q != nil || carry != 0 {
            let sum = (p?.value ?? 0) + (q?.value ?? 0) + carry
            carry = sum / 10
            
            let newNode = ListNode(sum % 10)
            currentNode.next = newNode
            currentNode = newNode
            
            p = p?.next
            q = q?.next
        }
        
        return dummyHead.next
    }
    
    func description(_ result: ListNode?) -> String {
        var text = "["
        var node = result
        
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
let result = solution.addTwoNumbers(firstList.first, secondList.first)
solution.description(result)
