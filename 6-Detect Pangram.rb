# https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby
#
# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
#
#   Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
#
def pangram?(string)
  ('a'..'z').to_a == string.downcase.gsub(/[^a-z]/, '').chars.uniq.sort
end

# Решения codewars
#
# Реш 1
# any? - Передаёт в указанный блок каждый элемент коллекции. Метод возвращает true если блок ни разу не вернул false или nil. Если блок не задан, Руби добавляет неявный блок {|obj| obj} (в результате чего all? вернёт true только при условии, если ни один из элементов коллекции не оказался ни false ни nil.)
# include? - Возвращает true если хотя бы один из элементов enum окажется равен obj. Равенство проверяется оператором ==
# def panagram?(string)
#   ('a'..'z').all? { |x| string.downcase.include? (x) }
# end
#
# Реш 2
# def panagram?(string)
#    string.downcase.scan(/[a-z]/).uniq.size == 26
# end
#
# Реш 3 - такой алгоритм я тоже рассматривала
# def panagram?(s)
#   ("A".."Z").to_a - s.upcase.chars == []
# end