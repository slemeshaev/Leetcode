// Задача 1: Две суммы (Two sum)

// Описание и решение задачи находится [здесь](https://github.com/slemeshaev/Leetcode/blob/main/1_Two_Sum/1_Two_sum.md)

class TwoSum {
    // Solution 1: O(N^2)
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
}

let someNums = [4, 6, 8, 3, 5, 24, 3, 12]
let someTarget = 13

let example = TwoSum()
example.bruteForce(nums: someNums, target: someTarget)
