# https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby
#
# Digital root is the recursive sum of all the digits in a number.
#
#   Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
#

def digital_root(n)
  while n.to_s.length > 1 do
    n = dig_sum(n)
  end
  n
end

def dig_sum(n)
  arr_str = n.to_s.split('')
  arr_num = []
  arr_str.each {|x| arr_num << x.to_i }
  arr_num.inject(:+)
end

#Рекурсия
# def digital_root(n)
#  if n < 10
#    n
#  else
#   digital_root(n / 10 + n % 10)
#  end
#
#
# Решения codewars
# Реш 1
# def digital_root(n)
#   n < 10 ? n : digital_root(n.digits.sum)
# end
#
# Реш 2
# def digital_root(n)
#   n < 10 ? n : digital_root(n.to_s.split(//).map(&:to_i).inject(:+)); # что такое map(&:to_i) ?
# end
#
# Реш 3
# def digital_root(n)
#   return n < 1 ? 0 : (n - 1) % 9 + 1  # что то на гениальном
# end
#
# Реш 4
# def digital_root(n)
#   n = n.digits.sum while n > 9; n
# end