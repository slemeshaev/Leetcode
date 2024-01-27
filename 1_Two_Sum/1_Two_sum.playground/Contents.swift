// Задача 1: Сумма двух (Two sum)

// Условие: На вход подается массив чисел типа Int и объект типа Int.
// Верните значение двух чисел из массива, которые в сумме дают значение объекта.

// Решение может быть только одно и элементы в массиве не повторяются,
// если пара не найдена, то верните пустой массив.

class Solution {
    // Решение 1 (Сложность алгоритма: O(N^2))
    func twoSum(array: [Int], target: Int) -> [Int] {
        var resultArray: [Int] = []
        
        for i in 0 ..< array.count - 1 {
            for j in i + 1 ..< array.count {
                if (array[i] + array[j] == target) {
                    resultArray.append(i)
                    resultArray.append(j)
                    
                    return resultArray
                }
            }
        }
        
        return resultArray
    }
    
    // Решение 2 (Сложность алгоритма: O(N))
    func twoSumImproved(array: [Int], target: Int) -> [Int] {
        var dictionary: [Int : Int] = [:]
        var resultArray: [Int] = []
        
        for (i, j) in array.enumerated() {
            if let index = dictionary[target - j] {
                resultArray.append(index)
                resultArray.append(i)
                
                return resultArray
            }
            
            dictionary[j] = i
        }
        
        return resultArray
    }
}

let someArray = [4, 6, 8, 3, 5, 24, 3, 12]
let someTarget = 13

let example = Solution()
example.twoSum(array: someArray, target: someTarget)
example.twoSumImproved(array: someArray, target: someTarget)
