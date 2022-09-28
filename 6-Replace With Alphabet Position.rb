# https://www.codewars.com/kata/546f922b54af40e1e90001da/train/ruby
#
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
#
#   If anything in the text isn't a letter, ignore it and don't return it.
#
#   "a" = 1, "b" = 2, etc.
#
#   Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )

def alphabet_position(text)
  alphabet = ('a'..'z').to_a
  text1 = text.downcase.gsub(/[^a-z]/, '')
  text1.chars.map {|x| alphabet.index(x).to_i + 1}.join(' ')
end

# Решения codewars
#
# Реш 1
# .ord - порядковая функция возвращает значение ASCII заданного символа, a = 97 - отсюда c.downcase.ord - 96
# def alphabet_position(text)
#   text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')  # /[^a-z]/i - i = insensitive то есть не смотрит на регист
# end
#
# Реш 2
# def alphabet_position(text)
#   text.upcase.chars.select { |c| ("A".."Z").include?(c) } .map { |c| c.ord-64 } .join(" ")
# end
#
# Реш 3 - вот тут не оч поняла решение
# def alphabet_position(text)
#   return text.downcase.split('').map { |ch| ch.ord + 1 - 'a'.ord if ch.match(/^[[:alpha:]]$/) }.compact.join(' ')
# end
#
# Реш 4 - через лямбду
# P = ->(c) { c.ord - 64 }
#
# def alphabet_position(text)
#   text.upcase.scan(/[A-Z]/).map(&P).join(' ')
# end