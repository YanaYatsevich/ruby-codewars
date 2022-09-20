# https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/ruby
#
# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
#   Example
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
#
def create_phone_number(num)
  a = num[0..2].join
  b = num[3..5].join
  c = num[6..9].join
  "(" + a + ") " + b + "-" + c # только я до этого писала puts - не подходит потому что puts вызывает метод на объекте и возвращает nil (то есть ничего не возвращает), а нам надо строку
end

# Решения codewars
#
# Реш 1 - надо объяснение
# def createPhoneNumber(array)
#   '(%d%d%d) %d%d%d-%d%d%d%d' % array
# end
#
# Реш 2 - лучше моего, объясни что за map(&:join)
# def createPhoneNumber(digits)
#   area_code, prefix, *extension = digits.each_slice(3).map(&:join)
#   "(#{area_code}) #{prefix}-#{extension.join}"
# end
#
# Реш 3 - как мое, наверное тут лучше описано и короче
# def createPhoneNumber(str)
#   "(#{str[0..2].join}) #{str[3..5].join}-#{str[6..10].join}"
# end
#
# Реш 4 - с группами, даже понятно, но сама я б не написала
# def createPhoneNumber(numbers)
#   numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3' # /d - любая цифра
# end
#
# Реш 5 - нужно пояснение
# def createPhoneNumber(numbers)
#   numbers = numbers.dup
#   "(###) ###-####".gsub!(/#/) { numbers.shift.to_s }
# end
#
# Реш 6 - 5 чел поставили как Best practices, но почему?
# def createPhoneNumber(numbers)
#   a = numbers
#   s = ""
#   s += "("
#   s += a[0].to_s
#   s += a[1].to_s
#   s += a[2].to_s
#   s += ") "
#   s += a[3].to_s
#   s += a[4].to_s
#   s += a[5].to_s
#   s += "-"
#   s += a[6].to_s
#   s += a[7].to_s
#   s += a[8].to_s
#   s += a[9].to_s
#   s
# end