# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.
#
#   Note: a and b are not ordered!

def get_sum(a,b)
  arr = [a, b]
  x = arr.max
  y = arr.min
  a != b ? (y..x).sum : a
end

# Ниже мои неправильные решения
# неправильно потому что если b < a то (a..b).sum не работает
# def get_sum(a,b)
#   a != b ? (a..b).sum : a
# end
#
# def get_sum(a,b)
#   if a != b
#     sum = 0
#     for i in (a..b)
#       sum += i
#     end
#     sum
#   else
#     a
#   end
# end

# def get_sum(a,b)
#   enu = (a..b)
#   enu.sort
#   a != b ? enu.sum : a
# end
#
#
# Решения codewars
#  Bопрос - тут ни в каких решениях нету проверки на условие "If the two numbers are equal return a or b" и тем не менее все эт решения правильные. Наверное я что то недопонимаю
#
# Реш 1 - reduce a list of numbers into a single value by adding them together
# Вопрос - как можно самому найти такое решение?
# def get_sum(a,b)
#   return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)  # reduce(:+) = (a..b).reduce { |sum, n| sum + n }
# end
#
# Реш 2
# def get_sum(a,b)
#   c, d = [a, b].sort
#   (c..d).inject(:+) # как я поняла inject то же самое что и reduce
# end
#
# Реш 3 - то к чему стремилась
# def get_sum(a,b)
#   smaller, higher = [a, b].sort
#
#   (smaller..higher).sum
# end
#
# Реш 4  - как мое но короче намного
# def get_sum(a,b)
#   ([a,b].min..[a,b].max).sum
# end
#
# Реш 5
# def get_sum(a,b)
#   (a <= b ? a..b : b..a).sum
# end