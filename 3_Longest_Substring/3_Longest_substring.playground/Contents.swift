// Задача 3: Самая длинная подстрока без повторяющихся символов (Longest substring without repeating characters)

// Описание и решение задачи находятся в файле 3_Longest_substring.md

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // Длина самой длинной подстроки без повторяющихся символов
        var maxLength = 0
        
        // Создаем множество для хранения уникальных символов в текущей подстроке
        var uniqueSymbols = Set<Character>()
        
        // Начало и конец строки
        var start = s.startIndex, end = s.startIndex
        
        // С помощью цикла ищем длину самой длинной подстроки
        while end < s.endIndex {
            if !uniqueSymbols.contains(s[end]) {
                uniqueSymbols.insert(s[end])
                end = s.index(after: end)
                maxLength = max(maxLength, s.distance(from: start, to: end))
            } else {
                uniqueSymbols.remove(s[start])
                start = s.index(after: start)
            }
        }
        
        return maxLength
    }
}

// Пример использования
let someString = "abcabcbb"

let solution = Solution()
let result = solution.lengthOfLongestSubstring(someString)

print(result)
