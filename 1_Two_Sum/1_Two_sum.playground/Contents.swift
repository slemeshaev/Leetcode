// Задача 1: Две суммы (Two sum)

// Описание и решение задачи находятся в файле 1_Two_sum.md

class TwoSum {
    // Solution 1:
    // Time  complexity: O(n^2)
    // Space complexity: O(1)
    func bruteForce(nums: [Int], target: Int) -> [Int] {
        var resultNums: [Int] = []
        
        for i in 0..<nums.count - 1 {
            for j in i + 1..<nums.count {
                if (nums[i] + nums[j] == target) {
                    resultNums.append(i)
                    resultNums.append(j)
                    
                    return resultNums
                }
            }
        }
        
        return resultNums
    }
    
    // Solution 2:
    // Time  complexity: O(n)
    // Space complexity: O(n)
    func twoPassHashTable(nums: [Int], target: Int) -> [Int] {
        var dictionary: [Int : Int] = [:]
        var resultNums: [Int] = []
        
        for (index, value) in nums.enumerated() {
            dictionary[value] = index
        }
        
        for (index, value) in nums.enumerated() {
            let complement = target - value
            
            if let complementIndex = dictionary[complement], complementIndex != index {
                resultNums.append(index)
                resultNums.append(complementIndex)
                
                return resultNums
            }
        }
        
        return resultNums
    }
}

let someNums = [4, 6, 8, 3, 5, 24, 3, 12]
let someTarget = 13

let example = TwoSum()
example.bruteForce(nums: someNums, target: someTarget)
example.twoPassHashTable(nums: someNums, target: someTarget)
