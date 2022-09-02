#def is_isogram(string)
#  string.downcase!
#  ("a".."z").each {|char|
#    return false if string.count(char) > 1
# }
#  return true
#end

def is_isogram(string)
  string.downcase!
  freqs = {}
  freqs.default = 0
  string.each_char { |char| freqs[char] += 1}
  ("a".."z").each {|x|
    return false if freqs[x] > 1}
  return true
end

# def is_isogram(string)
#   string.downcase.chars.uniq == string.downcase.chars
# end
#
# и вот это
# def is_isogram(string)
#   string.length == string.downcase.chars.uniq.count
# end
