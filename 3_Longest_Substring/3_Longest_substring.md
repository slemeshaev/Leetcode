## 3. Longest substring without repeating characters (Самая длинная подстрока без повторяющихся символов)

Задана строка `s`. Найдите длину самой большой строки без повторяющихся символов.

#### Пример 1:

- Входные параметры: s = "abcabcbb"
- Выходные параметры: 3
- Объяснение: Ответом является "abc" с длиной 3.

#### Пример 2:

- Входные параметры: s = "bbbbb"
- Выходные параметры: 1
- Объяснение: Ответом является "b" с длиной 1.

#### Пример 3:

- Входные параметры: s = "pwwkew"
- Выходные параметры: 3
- Объяснение: Ответом является "wke" с длиной 3.

Обратите внимание, что ответ должен быть подстрокой. "pwke" - это подпоследовательность, а не подстрока.

#### Ограничения:

- 0 <= s.length <= 5 * 10<sup>4</sup>
- s содержит английские буквы, цифры, символы и пробелы.

### Решение

#### Алгоритм

*Здесь будет описание алгоритма...*

#### Реализация на Swift

```
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
```

#### Анализ сложности

- Временная сложность:
- Ëмкостная сложность: