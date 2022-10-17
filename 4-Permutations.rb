# https://www.codewars.com/kata/5254ca2719453dcc0b00027d/train/ruby
#
# In this kata you have to create all permutations of a non empty input string and remove duplicates, if present. This means, you have to shuffle all letters from the input in all possible orders.
#
#   Examples:
#
#   * With input 'a'
# * Your function should return: ['a']
# * With input 'ab'
# * Your function should return ['ab', 'ba']

def permutations(string)
  arr = string.chars
  arr.permutation.uniq.map {|x| x.join}
end

# Решения codewars
# Реш 1
# def permutations(string)
#   string.chars.permutation.map(&:join).uniq
# end
#
# Реш 2
# def permutations(string)
#   string.chars.permutation(string.length).map(&:join).uniq
# end
#
# Реш 3
# def permutations(str)
#   perms = str.chars.permutation(str.size).to_a
#   per = []
#   perms.each { |arr| per << arr.join }
#   per.uniq
# end


