# https://www.codewars.com/kata/5264d2b162488dc400000001/train/ruby
#
# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
#   Examples:
#
#   spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
#
def spin_words(string)
  arr = string.split(' ')
  arr.each { |x| x.length > 4 ? x.reverse! : x }.join(" ")
end

# Решения codewars
#
# Реш 1 - помоги с пояснением
# def spinWords(string)
#   string.gsub(/\w{5,}/, &:reverse)
# end
#
# Реш 2
# def spinWords(string)
#   string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' ' #тут прокатил reverse, потому что map возвр новый изменненный массив
# end
