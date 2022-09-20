# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.
#
def filter_list(l)
  # return a new list with the strings filtered out
  l_new = []
  l.each { |x|
    if x == x.to_i
      l_new << x
    end }
  return l_new
end

# Решения codewars
#
# Реш 1
# def filter_list(l)
#   l.reject { |x| x.is_a? String } # reject - Возвращает новый массив, содержащий элементы в себе, для которых данный блок не является истинным. Порядок неотбракованных элементов сохраняется.
# end
#
# Реш 2 - как 1 но наоборот
# def filter_list(l)
# l.select{|i| i.is_a?(Integer)} #явл ли i объектом класса Integer
# end
#
# Реш 3
# def filter_list(l)
#  l.grep(Numeric) # особенность grep что в него можно засунуть класс
# end
#
# Реш 4
# def filter_list(l)
#   l.delete_if { |x| x.class == String } # == сравнивает объект с объектом
# end
