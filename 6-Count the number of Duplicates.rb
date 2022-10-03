# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby
#
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
#
#   Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'

# Старое решение - не все тесты проходят
# def duplicate_count(text) # text = '9uuuVpHdS75mvCyI'
#   text.downcase.chars.uniq.each { |x| text.sub!(x, "")} # text => "uuVHSCI"  не учитывает регистр
#   text.downcase.chars.uniq.count
# end
#
# Исправленное старое решение
# def duplicate_count(text) # text = '9uuuVpHdS75mvCyI'
#   text1 = text.downcase  # text = "9uuuvphds75mvcyi"
#   text1.chars.uniq.each { |x| text1.sub!(x, "")}  # text1 = "uuv"
#   text1.chars.uniq.count
# end

# Мое решение
def duplicate_count(text)
  freqs = {}
  freqs.default = 0
  text.downcase.each_char { |char| freqs[char] += 1 }
  a = text.downcase.chars.map { |x| freqs[x] > 1 ? x : "" }.join
  a.chars.uniq.count
end

# Решения codewars
#
# Реш 1
# def duplicate_count(text)
#   ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end
#
# Реш 2
# def duplicate_count(text)
#   arr = text.downcase.split("")
#   arr.uniq.count { |n| arr.count(n) > 1 }
# end
#
# Реш 3 - как мое но через хеш - есть ли в таком решении плюсы?
# def duplicate_count(text)
#   hsh = Hash.new(0)
#   text.downcase.chars.each { |c| hsh[c] += 1 }
#   hsh.values.count { |k| k > 1 }
# end
#
# Реш 4 не оч понятно мне как читать  |_, v|
# def duplicate_count(text)
#   text.downcase.chars.group_by(&:to_s).count { |_, v| v.count > 1 }
# end
#
# Реш 5
# def duplicate_count(text)
#   text.downcase.chars.tally.count { |k, v| v > 1 } # tally - Returns a new Hash containing the counts of occurrences of each element.
# end
#
# Реш 6
# def duplicate_count(str)
#     str.downcase.each_char.find_all { |c| str.downcase.count(c) > 1 }.uniq.size
# end
#
# Реш 7 - давай разберем)
# def duplicate_count(text)
#   text.scan(/(\w)(?=(?!.*\1.*\1).*\1)/i).length
# end


