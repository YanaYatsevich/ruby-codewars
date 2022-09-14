# https://www.codewars.com/kata/5208f99aee097e6552000148/train/ruby
# Complete the solution so that the function will break up camel casing, using a space between words.
#

# я много пыталась, но ничего не выходило
# ниже разбор решения
# ? - Соответствует предыдущему символу 0 или 1 раз
# (?<=шаблон) - позитивный просмотр назад, выберет пустое место после, если a-z
# (?=шаблон) - Позитивный просмотр вперёд, проверяет будет ли после a-z любая буква из A-Z и выбирает пустое место
#
def solution(string)
  string.gsub(/(?<=[a-z])(?=[A-Z])/, ' ')
end

# Решения codewars
#
# Реш 1
# def solution(string)
#   string.gsub /([A-Z])/, ' \1'
# end
#
# Реш 2
# def solution(string)
#   string.gsub(/(?=[A-Z])/, ' ')
# end
#
# Реш 3
# def solution(string)
#   string.chars.map { |s| s == s.downcase ? s : " #{s}" }.join
# end
#
# Реш 4
# def solution(str)
#   str.gsub(/[A-Z]/) { |x| " #{x}" }
# end
#
# Реш 5
# def solution(input_str)
#     return_str = ""
#   input_str.chars.each do |char|
#     if char == char.upcase
#       return_str << " " + char
#     else
#       return_str << char
#     end
#   end
#
#   return_str
# end
#
# Реш 6
# def solution(string)
#   string.chars.map { |l| ('A'..'Z') === l ? " " + l : l }.join('')
# end