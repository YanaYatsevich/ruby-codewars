# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby
#
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
#   Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
#
def duplicate_encode(word)
  freqs = Hash.new(0)
  word.downcase.each_char { |char| freqs[char] += 1}
  word.downcase.chars.map { |x| freqs[x] > 1 ? ')' : '('}.join
end

# Решения codewars
#
# Реш 1 - вроде второе уже решение с count(char), но я так и не смогла его применить
# def duplicate_encode(word)
#   word
#       .downcase
#       .chars
#       .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#       .join
# end
#
# Реш 2 - помоги понять что произошло в строке с регуляркой
# def duplicate_encode(word)
#   word.downcase.gsub(/./) do |char|
#     word.downcase.count(char.downcase) > 1 ? ")" : "("
#   end
# end
#
# Реш 3
# def duplicate_encode(word)
#   word.downcase!
#   word.chars.map do |c|
#     if word.count(c) > 1
#       ')'
#     else
#       '('
#     end
#   end.join  # воу я такое впервые вижу
# end
