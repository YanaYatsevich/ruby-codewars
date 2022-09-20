# Write a program to determine if a string contains only unique characters. Return true if it does and false otherwise.
#
#   The string may contain any of the 128 ASCII characters. Characters are case-sensitive, e.g. 'a' and 'A' are considered different characters.
#
def unique_chars?(str)
  str.chars.uniq == str.chars
end

# Решения codewars
#
# Реш 1 - нужна помощь в понимании что тут произошло
# def unique_chars?(str)
#   chars = Hash.new(false)
#   str.each_char do |c|
#     if chars[c]
#       return false
#     else
#       chars[c] = true
#     end
#   end
#   true
# end
#
# Реш 2 - и вот тут
# def unique_chars?(str)
#   str.chars.uniq! ? false : true
# end
#
# + Реш 3 с похожей логикой
# def unique_chars?(str)
#   str.chars.uniq!.nil?
# end
