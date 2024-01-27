// Task 1: Two sum (Две суммы)

// Описание и решение задачи находится [здесь](URL)

class Solution {
    // Solution 1: O(N^2)
    func twoSumBruteForce(nums: [Int], target: Int) -> [Int] {
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
    
    // Solution 2: O(N)
    func twoSumImproved(nums: [Int], target: Int) -> [Int] {
        var dictionary: [Int : Int] = [:]
        var resultNums: [Int] = []
        
        for (i, j) in nums.enumerated() {
            if let index = dictionary[target - j] {
                resultNums.append(index)
                resultNums.append(i)
                
                return resultNums
            }
            
            dictionary[j] = i
        }
        
        return resultNums
    }
}

let someNums = [4, 6, 8, 3, 5, 24, 3, 12]
let someTarget = 13

let example = Solution()
example.twoSumBruteForce(nums: someNums, target: someTarget)
example.twoSumImproved(nums: someNums, target: someTarget)
