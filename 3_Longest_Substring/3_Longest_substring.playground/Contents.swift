// Задача 3: Самая длинная подстрока без повторяющихся символов (Longest substring without repeating characters)

// Описание и решение задачи находятся в файле 3_Longest_substring.md

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
        var uniqueSymbols = Set<Character>()
        var start = s.startIndex, end = s.startIndex
        
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
